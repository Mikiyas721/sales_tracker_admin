import 'package:flutter/cupertino.dart';
import '../../application/login/login_bloc.dart';
import '../../common/controller/controller.dart';
import '../../common/failure.dart';
import '../../common/mixins/toast_mixin.dart';
import '../../domain/entities/user.dart';
import '../../domain/use_cases/clear_loggedin_user.dart';
import '../../domain/use_cases/fetch_admin.dart';
import '../../domain/use_cases/login_into_api.dart';
import '../../domain/use_cases/request_firebase_verification_code.dart';
import '../../domain/use_cases/save_user.dart';
import '../../domain/use_cases/verify_firebase_code.dart';
import '../../domain/value_objects/name.dart';
import '../../domain/value_objects/phone_number.dart';
import '../../infrastructure/repos/firebase_repo_impl.dart';
import '../../injection.dart';
import '../../presentation/models/login_view_model.dart';

class LoginController extends BlocViewModelController<LoginBloc, LoginEvent,
    LoginState, LoginViewModel> with ToastMixin {
  final BuildContext context;

  LoginController(this.context) : super(getIt.get<LoginBloc>(), false);

  @override
  LoginViewModel mapStateToViewModel(LoginState s) {
    return LoginViewModel(
      phoneNumber: s.phoneNumber.getOrElse(() => null)?.value,
      phoneNumberError: s.hasSubmittedPhoneNumber
          ? s.phoneNumber.fold((l) => l.message, (r) => null)
          : null,
      hasSubmittedPhoneNumber: s.hasSubmittedPhoneNumber,
      isRequestingCode: s.isRequestingCode,
      code: s.verificationCode.getOrElse(() => null)?.value?.toString(),
      codeError: s.hasSubmittedCode
          ? s.verificationCode.fold((l) => l.message, (r) => null)
          : null,
      isVerifyingCode: s.isVerifyingCode,
      isVerificationView: s.isVerificationView,
    );
  }

  void onPhoneNumberChanged(String phoneNumber) {
    bloc.add(LoginPhoneNumberChangedEvent(phoneNumber));
  }

  void onVerificationCodeChanged(String code) {
    bloc.add(LoginVerificationCodeChangedEvent(code));
  }

  void onSubmitPhoneNumber() {
    bloc.add(LoginPhoneNumberSubmittedEvent());
    bloc.state.phoneNumber.fold((l) {
      toastError(l.message);
    }, (phoneNumber) async {
      final apiResult =
          await getIt.get<FetchAdmin>().execute(phoneNumber);
      apiResult.fold((l) {
        toastError(l.message);
      }, (r) async {
        bloc.add(LoginVerificationCodeRequestedEvent());
        final phoneAuthResult = await getIt
            .get<RequestFirebaseVerificationCode>()
            .execute(phoneNumber);

        if (phoneAuthResult is PhoneAuthSuccessResult) {
          loginIntoApi(phoneAuthResult.token);
        } else if (phoneAuthResult is PhoneAuthFailedResult) {
          bloc.add(LoginVerificationCodeRequestedEvent());
          toastError(phoneAuthResult.failure);
        } else if (phoneAuthResult is PhoneAuthCodeSentResult) {
          bloc.add(LoginAutoRetrievalTimedOutEvent());
        }
      });
    });
  }

  void onWrongNumber() {
    bloc.add(LoginWrongNumberEvent());
  }

  void onVerifyCode() {
    bloc.add(LoginVerificationCodeSubmittedEvent());
    bloc.state.verificationCode.fold((l) {
      toastError(l.message);
    }, (r) async {
      bloc.add(LoginVerifyingCodeEvent());
      final verificationResult =
          await getIt.get<VerifyFirebaseCode>().execute(r.value.toString());
      verificationResult.fold((l) {
        bloc.add(LoginVerifyingCodeFailedEvent(l));
        toastError(l.message);
      }, (r) {
        loginIntoApi(r);
      });
    });
  }

  void loginIntoApi(String idToken) async {
    final result = await getIt.get<LoginIntoApi>().execute(idToken);
    result.fold((l) {
      bloc.add(LoginVerifyingCodeFailedEvent(l));
      toastError(l.message);
    }, (response) {
      final loggedInUser = User.create(
        id: response['id'],
        name: Name.create(response['name']).getOrElse(() => null),
        phoneNumber:
            PhoneNumber.create(response['phoneNumber']).getOrElse(() => null),
        token: response['token'],
        createdAt: DateTime.parse(response['createdAt']),
        updatedAt: DateTime.parse(response['updatedAt']),
      );
      loggedInUser.fold(() {
        bloc.add(LoginVerifyingCodeFailedEvent(SimpleFailure("No user found")));
        toastError("No user found");
      }, (a) async {
        await getIt.get<SaveUser>().execute(a);
        bloc.add(LoginVerifyingCodeSucceededEvent());
        Navigator.pushNamedAndRemoveUntil(
            context, '/homePage', (route) => false);
      });
    });
  }

  void onLogout() async {
    final result = await getIt.get<ClearLoggedInUser>().execute();
    if (result)
      Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
    else
      toastError("Unable to logout.Please try again");
  }
}
