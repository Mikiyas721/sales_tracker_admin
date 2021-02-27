import 'package:admin_app/common/id_dto.dart';
import 'package:admin_app/infrastructure/dto/fund_transaction_dto.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../common/failure.dart';
import '../../domain/entities/fund_transaction.dart';
import '../../domain/ports/fund_transaction_repo.dart';
import '../../infrastructure/data_sources/fund_transaction_data_source.dart';

@LazySingleton(as: IFundTransactionRepo)
class FundTransactionRepoImpl implements IFundTransactionRepo {
  final FundTransactionCrudDataSource fundTransactionCrudDataSource;

  FundTransactionRepoImpl(this.fundTransactionCrudDataSource);

  @override
  Future<Either<Failure, List<FundTransaction>>> fetchFundTransactions(
      String salesPersonId, String shopId) async {
    final result = await fundTransactionCrudDataSource.find(options: {
      "filter": {
        "where": {
          "and": [
            {"salesPersonId": "$salesPersonId"},
            {"shopId": "$shopId"}
          ]
        }
      }
    });
    return result.either.fold(
        (l) => left(SimpleFailure("Invalid Fund Transaction Data")),
        (r) =>
            right(IdDto.toDomainList<FundTransaction, FundTransactionDto>(r)));
  }

  @override
  Future<Either<Failure, List<FundTransaction>>> fetchFundedThisMonth({String salesPersonId}) async{
    final result = await fundTransactionCrudDataSource.find(options: {
      "filter": {
        "where": salesPersonId!=null?{
          "and": [
            {"salesPersonId": "$salesPersonId"},
            {"createdAt": {"gt":"${DateTime.now().subtract(Duration(days: 30)).toString()}"}}
          ]
        }:{"createdAt": {"gt":"${DateTime.now().subtract(Duration(days: 30)).toString()}"}}
      }
    });
    return result.either.fold(
            (l) => left(SimpleFailure("Invalid Fund Transaction Data")),
            (r) =>
            right(IdDto.toDomainList<FundTransaction, FundTransactionDto>(r)));

  }

  @override
  Future<Either<Failure, List<FundTransaction>>> fetchFundedThisWeek({String salesPersonId}) async{
    final result = await fundTransactionCrudDataSource.find(options: {
      "filter": {
        "where": salesPersonId!=null?{
          "and": [
            {"salesPersonId": "$salesPersonId"},
            {"createdAt": {"gt":"${DateTime.now().subtract(Duration(days: 7)).toString()}"}}
          ]
        }:{"createdAt": {"gt":"${DateTime.now().subtract(Duration(days: 7)).toString()}"}}
      }
    });
    return result.either.fold(
            (l) => left(SimpleFailure("Invalid Fund Transaction Data")),
            (r) =>
            right(IdDto.toDomainList<FundTransaction, FundTransactionDto>(r)));

  }

  @override
  Future<Either<Failure, List<FundTransaction>>> fetchFundedToday({String salesPersonId})async {
    final result = await fundTransactionCrudDataSource.find(options: {
      "filter": {
        "where": salesPersonId!=null?{
          "and": [
            {"salesPersonId": "$salesPersonId"},
            {"createdAt": {"gt":"${DateTime.now().subtract(Duration(hours: 24)).toString()}"}}
          ]
        }:{"createdAt": {"gt":"${DateTime.now().subtract(Duration(hours: 24)).toString()}"}}
      }
    });
    return result.either.fold(
            (l) => left(SimpleFailure("Invalid Fund Transaction Data")),
            (r) =>
            right(IdDto.toDomainList<FundTransaction, FundTransactionDto>(r)));
  }
}
