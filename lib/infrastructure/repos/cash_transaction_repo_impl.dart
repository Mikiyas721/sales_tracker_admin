import 'package:admin_app/common/id_dto.dart';
import 'package:admin_app/infrastructure/dtos/cash_transaction_dto.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../common/failure.dart';
import '../../domain/entities/cash_transaction.dart';
import '../../domain/ports/cash_transaction_repo.dart';
import '../../infrastructure/data_sources/cash_transaction_data_source.dart';

@LazySingleton(as: ICashTransactionRepo)
class CashTransactionRepoImpl implements ICashTransactionRepo {
  final CashTransactionCrudDataSource _cashTransactionCrudDataSource;

  CashTransactionRepoImpl(this._cashTransactionCrudDataSource);

  @override
  Future<Either<Failure, List<CashTransaction>>> fetchFundTransactions(
      String salesPersonId, String shopId) async {
    final result = await _cashTransactionCrudDataSource.find(options: {
      "filter": {
        "order": "createdAt DESC",
        "where": {
          "and": [
            {"salesPersonId": "$salesPersonId"},
            {"shopId": "$shopId"}
          ]
        }
      }
    });
    return result.either.fold(
        (l) => left(l),
        (r) =>
            right(IdDto.toDomainList<CashTransaction, CashTransactionDto>(r)));
  }

  @override
  Future<Either<Failure, List<CashTransaction>>> fetchFundedThisMonth({String salespersonId}) async{
    final result = await _cashTransactionCrudDataSource.find(options: {
      "filter": {
        "where": salespersonId!=null?{
          "and": [
            {"salesPersonId": "$salespersonId"},
            {"createdAt": {"gt":"${DateTime.now().subtract(Duration(days: 30)).toString()}"}}
          ]
        }:{"createdAt": {"gt":"${DateTime.now().subtract(Duration(days: 30)).toString()}"}}
      }
    });
    return result.either.fold(
            (l) => left(l),
            (r) =>
            right(IdDto.toDomainList<CashTransaction, CashTransactionDto>(r)));

  }

  @override
  Future<Either<Failure, List<CashTransaction>>> fetchFundedThisWeek({String salespersonId}) async{
    final result = await _cashTransactionCrudDataSource.find(options: {
      "filter": {
        "where": salespersonId!=null?{
          "and": [
            {"salesPersonId": "$salespersonId"},
            {"createdAt": {"gt":"${DateTime.now().subtract(Duration(days: 7)).toString()}"}}
          ]
        }:{"createdAt": {"gt":"${DateTime.now().subtract(Duration(days: 7)).toString()}"}}
      }
    });
    return result.either.fold(
            (l) => left(l),
            (r) =>
            right(IdDto.toDomainList<CashTransaction, CashTransactionDto>(r)));

  }

  @override
  Future<Either<Failure, List<CashTransaction>>> fetchFundedToday({String salespersonId})async {
    final result = await _cashTransactionCrudDataSource.find(options: {
      "filter": {
        "where": salespersonId!=null?{
          "and": [
            {"salesPersonId": "$salespersonId"},
            {"createdAt": {"gt":"${DateTime.now().subtract(Duration(hours: 24)).toString()}"}}
          ]
        }:{"createdAt": {"gt":"${DateTime.now().subtract(Duration(hours: 24)).toString()}"}}
      }
    });
    return result.either.fold(
            (l) => left(l),
            (r) =>
            right(IdDto.toDomainList<CashTransaction, CashTransactionDto>(r)));
  }
}
