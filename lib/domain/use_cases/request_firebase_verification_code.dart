import 'package:admin_app/domain/ports/firebase_repo.dart';
import 'package:admin_app/domain/value_objects/phone_number.dart';
import 'package:admin_app/infrastructure/repos/firebase_repo_impl.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class RequestFirebaseVerificationCode {
  final IFirebaseRepo _iFirebaseRepo;

  const RequestFirebaseVerificationCode(this._iFirebaseRepo);

  Future<PhoneAuthResult> execute(PhoneNumber phoneNumber) async {
    if (phoneNumber == null) return PhoneAuthFailedResult("Phone Number is Required");
    return _iFirebaseRepo.requestCode(phoneNumber);
  }
}
