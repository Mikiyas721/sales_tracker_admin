import 'package:admin_app/common/id_dto.dart';
import 'package:admin_app/domain/entities/shop.dart';
import 'package:admin_app/infrastructure/data_sources/sale_transaction_data_source.dart';
import 'package:admin_app/infrastructure/dto/sale_transaction_dto.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../common/failure.dart';
import '../../domain/entities/sell_transaction.dart';
import '../../domain/ports/sale_transaction_repo.dart';

@LazySingleton(as: ISaleTransactionRepo)
class SaleTransactionRepoImpl extends ISaleTransactionRepo {
  final SaleTransactionCrudDataSource saleTransactionCrudDataSource;

  SaleTransactionRepoImpl(this.saleTransactionCrudDataSource);

  @override
  Future<Either<Failure, List<SaleTransaction>>> fetchSaleTransactions(
      String salesPersonId, String shopId) async {
    final result = await saleTransactionCrudDataSource.find(options: {
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
        (l) => left(SimpleFailure("Invalid Sale Transaction Data")),
        (r) =>
            right(IdDto.toDomainList<SaleTransaction, SaleTransactionDto>(r)));
  }

  @override
  Future<Either<Failure, List<SaleTransaction>>> fetchSoldThisMonth(
      {String salesPersonId}) async {
    final result = await saleTransactionCrudDataSource.find(options: {
      "filter": {
        "where": salesPersonId != null
            ? {
                "and": [
                  {"salesPersonId": "$salesPersonId"},
                  {
                    "createdAt": {
                      "gt":
                          "${DateTime.now().subtract(Duration(days: 30)).toString()}"
                    }
                  }
                ]
              }
            : {
                "createdAt": {
                  "gt":
                      "${DateTime.now().subtract(Duration(days: 30)).toString()}"
                }
              }
      }
    });
    return result.either.fold(
        (l) => left(SimpleFailure("Invalid Sale Transaction Data")),
        (r) =>
            right(IdDto.toDomainList<SaleTransaction, SaleTransactionDto>(r)));
  }

  @override
  Future<Either<Failure, List<SaleTransaction>>> fetchSoldThisWeek(
      {String salesPersonId}) async {
    final result = await saleTransactionCrudDataSource.find(options: {
      "filter": {
        "where": salesPersonId != null
            ? {
                "and": [
                  {"salesPersonId": "$salesPersonId"},
                  {
                    "createdAt": {
                      "gt":
                          "${DateTime.now().subtract(Duration(days: 7)).toString()}"
                    }
                  }
                ]
              }
            : {
                "createdAt": {
                  "gt":
                      "${DateTime.now().subtract(Duration(days: 7)).toString()}"
                }
              }
      }
    });
    return result.either.fold(
        (l) => left(SimpleFailure("Invalid Sale Transaction Data")),
        (r) =>
            right(IdDto.toDomainList<SaleTransaction, SaleTransactionDto>(r)));
  }

  @override
  Future<Either<Failure, List<SaleTransaction>>> fetchSoldToday(
      {String salesPersonId}) async {
    final result = await saleTransactionCrudDataSource.find(options: {
      "filter": {
        "where": salesPersonId != null
            ? {
                "and": [
                  {"salesPersonId": "$salesPersonId"},
                  {
                    "createdAt": {
                      "gt":
                          "${DateTime.now().subtract(Duration(hours: 24)).toString()}"
                    }
                  }
                ]
              }
            : {
                "createdAt": {
                  "gt":
                      "${DateTime.now().subtract(Duration(hours: 24)).toString()}"
                }
              }
      }
    });
    return result.either.fold(
        (l) => left(SimpleFailure("Invalid Sale Transaction Data")),
        (r) =>
            right(IdDto.toDomainList<SaleTransaction, SaleTransactionDto>(r)));
  }

  @override
  Future<Either<Failure, List<SaleTransaction>>> fetchLoans() async {
    final result = await saleTransactionCrudDataSource.find(options: {
      "filter": {
        "where": {
          "soldAmount": {
            //TODO check
          }
        }
      }
    });
    return result.either.fold(
        (l) => left(SimpleFailure("Invalid Sale Transaction Data")),
        (r) =>
            right(IdDto.toDomainList<SaleTransaction, SaleTransactionDto>(r)));
  }

  @override
  Future<Either<Failure, List<SaleTransaction>>> fetchRecentlySold() async {
    final result = await saleTransactionCrudDataSource.find(options: {
      "filter": {
        "where": {
          "createdAt": {
            "gt": "${DateTime.now().subtract(Duration(days: 7)).toString()}"
          } //TODO Remove redundant code
        }
      }
    });
    return result.either.fold(
        (l) => left(SimpleFailure("Invalid Sale Transaction Data")),
        (r) =>
            right(IdDto.toDomainList<SaleTransaction, SaleTransactionDto>(r)));
  }
}
