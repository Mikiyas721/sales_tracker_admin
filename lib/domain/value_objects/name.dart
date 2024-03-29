import 'package:dartz/dartz.dart';
import '../../common/failure.dart';

abstract class NameFailure implements Failure {}

class ShortNameFailure extends NameFailure {
  @override
  String get message => "Name is too short";
}

class LongNameFailure extends NameFailure {
  @override
  String get message => "Name is too long";
}

class InvalidNameFailure extends NameFailure {
  @override
  String get message => "Invalid Name";
}

const regex = r'^[\w\s]+$';

class Name {
  final String value;

  Name._(this.value);

  static Either<NameFailure, Name> create(String name) {
    if (name.length < 2) return left(ShortNameFailure());
    if (name.length > 32) return left(LongNameFailure());
    if(!RegExp(regex).hasMatch(name)) return left(InvalidNameFailure());
    return right(Name._(name));
  }
}
