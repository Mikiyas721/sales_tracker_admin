import 'package:admin_app/application/add_salesperson/add_salesperson_bloc.dart';
import 'package:admin_app/common/controller/controller.dart';
import 'package:admin_app/common/mixins/toast_mixin.dart';
import 'package:admin_app/domain/entities/salesperson.dart';
import 'package:admin_app/domain/entities/user.dart';
import 'package:admin_app/domain/use_cases/add_admin.dart';
import 'package:admin_app/domain/use_cases/add_salesperson.dart';
import 'package:admin_app/injection.dart';
import 'package:admin_app/presentation/models/add_admin_view_model.dart';
import 'package:admin_app/presentation/models/new_salesperson_view_model.dart';
import 'package:flutter/cupertino.dart';
import '../../application/add_admin/add_admin_bloc.dart';

/// why not put a context in the parent?
class AddAdminController extends BlocViewModelController<AddAdminBloc,
    AddAdminEvent, AddAdminState, AddAdminViewModel> with ToastMixin {
  final BuildContext context;
  TextEditingController nameController;
  TextEditingController phoneNumberController;

  AddAdminController(this.context) : super(getIt.get<AddAdminBloc>(), true) {
    nameController = TextEditingController();
    phoneNumberController = TextEditingController();
  }

  @override
  AddAdminViewModel mapStateToViewModel(AddAdminState s) {
    return AddAdminViewModel(
        name: s.name.fold((l) => null, (r) => r.value),
        nameError:
            s.hasSubmitted ? s.name.fold((l) => l.message, (r) => null) : null,
        phoneNumber: s.name.fold((l) => null, (r) => r.value),
        phoneNumberError: s.hasSubmitted
            ? s.phoneNumber.fold((l) => l.message, (r) => null)
            : null,
        isAdding: s.hasRequested);
  }

  void onNameChanged(String name) {
    bloc.add(AddAdminNameChangedEvent(name));
  }

  void onPhoneNumberChanged(String phoneNumber) {
    bloc.add(AddAdminPhoneNumberChangedEvent(phoneNumber));
  }

  void onAdd() {
    bloc.add(AddAdminSubmittedEvent());
    final user = User.create(
        name: bloc.state.name.getOrElse(() => null),
        phoneNumber: bloc.state.phoneNumber.getOrElse(() => null),
        roleId: "roleId");

    ///??????????????
    user.fold(() {}, (a) async {
      final result = await getIt.get<AddAdmin>().execute(a);
      result.fold((l) {
        bloc.add(AddAdminFailedEvent(l));
      }, (r) {
        bloc.add(AddAdminSubmittedEvent());
        toastSuccess('Admin Added Successfully');
        nameController.text = "";
        phoneNumberController.text = "";
      });
    });
  }
}
