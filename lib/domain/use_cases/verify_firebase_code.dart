import 'package:admin_app/common/failure.dart';
import 'package:admin_app/domain/ports/firebase_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class VerifyFirebaseCode {
  final IFirebaseRepo _iFirebaseRepo;

  const VerifyFirebaseCode(this._iFirebaseRepo);

  Future<Either<Failure, String>> execute(String verificationCode) async {
    return await _iFirebaseRepo.verifyCode(verificationCode);
  }
}
