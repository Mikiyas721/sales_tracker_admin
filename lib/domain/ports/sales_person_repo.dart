import 'package:dartz/dartz.dart';
import '../../common/failure.dart';
import '../../domain/entities/salesperson.dart';

abstract class ISalesPersonRepo{
  Future<Either<Failure, Salesperson>> create(Salesperson salesPerson);
  Future<Either<Failure,List<Salesperson>>> fetchAll();
  Future<Either<Failure, List<Salesperson>>> getOwingPeople();
}