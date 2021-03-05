import 'package:dartz/dartz.dart';
import '../../common/failure.dart';
import '../../domain/entities/card_transaction.dart';

abstract class ICardTransactionRepo{
  Future<Either<Failure,List<CardTransaction>>> fetchSaleTransactions(String salesPersonId, String shopId);

  Future<Either<Failure, List<CardTransaction>>> fetchSoldToday({String salespersonId});
  Future<Either<Failure, List<CardTransaction>>> fetchSoldThisWeek({String salespersonId});
  Future<Either<Failure, List<CardTransaction>>> fetchSoldThisMonth({String salespersonId});

  Future<Either<Failure, List<CardTransaction>>> fetchLoans();
  Future<Either<Failure, List<CardTransaction>>> fetchRecentlySold();
}