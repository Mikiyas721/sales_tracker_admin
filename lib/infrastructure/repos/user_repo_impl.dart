import 'package:admin_app/domain/entities/user.dart';
import 'package:admin_app/domain/ports/user_repo.dart';
import 'package:admin_app/infrastructure/data_sources/user_cache_datasource.dart';
import 'package:admin_app/infrastructure/dtos/user_dto.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as:IUserRepo)
class UserRepo extends IUserRepo{
  final UserCacheDataSource userCacheDataSource;
  static const _KEY = "loggedInUser";

  UserRepo(this.userCacheDataSource);

  Future saveLoggedInUser(User user) {
   return userCacheDataSource.saveMap(_KEY, UserDto.fromDomain(user).toJson());
  }

  Future<Option<User>> getCurrentLoggedInUser(){
    return userCacheDataSource.getMap(_KEY).then((value) => value.flatMap((a) => UserDto.fromJson(a).toDomain()));
  }
  Future<bool> clearLoggedInUser()async{
    return userCacheDataSource.clear();
  }
}