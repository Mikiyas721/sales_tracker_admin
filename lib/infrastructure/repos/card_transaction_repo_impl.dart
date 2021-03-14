import 'package:admin_app/common/id_dto.dart';
import 'package:admin_app/infrastructure/data_sources/card_transaction_data_source.dart';
import 'package:admin_app/infrastructure/dtos/card_transaction_dto.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../common/failure.dart';
import '../../domain/entities/card_transaction.dart';
import '../../domain/ports/card_transaction_repo.dart';

@LazySingleton(as: ICardTransactionRepo)
class CardTransactionRepoImpl extends ICardTransactionRepo {
  final CardTransactionCrudDataSource _cardTransactionCrudDataSource;

  CardTransactionRepoImpl(this._cardTransactionCrudDataSource);

  @override
  Future<Either<Failure, List<CardTransaction>>> fetchSaleTransactions(
      String salesPersonId, String shopId) async {
    final result = await _cardTransactionCrudDataSource.find(options: {
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
            right(IdDto.toDomainList<CardTransaction, CardTransactionDto>(r)));
  }

  @override
  Future<Either<Failure, List<CardTransaction>>> fetchSoldThisMonth(
      {String salespersonId}) async {
    final result = await _cardTransactionCrudDataSource.find(options: {
      "filter": {
        "where": salespersonId != null
            ? {
                "and": [
                  {"salesPersonId": "$salespersonId"},
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
        (l) => left(l),
        (r) =>
            right(IdDto.toDomainList<CardTransaction, CardTransactionDto>(r)));
  }

  @override
  Future<Either<Failure, List<CardTransaction>>> fetchSoldThisWeek(
      {String salespersonId}) async {
    final result = await _cardTransactionCrudDataSource.find(options: {
      "filter": {
        "where": salespersonId != null
            ? {
                "and": [
                  {"salesPersonId": "$salespersonId"},
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
        (l) => left(l),
        (r) =>
            right(IdDto.toDomainList<CardTransaction, CardTransactionDto>(r)));
  }
  @override
  Future<Either<Failure, List<CardTransaction>>> fetchSoldToday(
      {String salespersonId}) async {
    final result = await _cardTransactionCrudDataSource.find(options: {
      "filter": {
        "where": salespersonId != null
            ? {
                "and": [
                  {"salesPersonId": "$salespersonId"},
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
        (l) => left(l),
        (r) =>
            right(IdDto.toDomainList<CardTransaction, CardTransactionDto>(r)));
  }

  @override
  Future<Either<Failure, List<CardTransaction>>> fetchLoans() async {
    final result = await _cardTransactionCrudDataSource.find(options: {
      "filter": {
        "include": {"relation": "salesPerson"},
        "where": {
          "soldAmount": {
            //TODO check
          }
        }
      }
    });
    return result.either.fold(
        (l) => left(l),
        (r) =>
            right(IdDto.toDomainList<CardTransaction, CardTransactionDto>(r)));
  }

  @override
  Future<Either<Failure, List<CardTransaction>>> fetchRecentlySold() async {
    final result = await _cardTransactionCrudDataSource.find(options: {
      "filter": {
        "order": "createdAt DESC",
        "include": {"relation": "salesPerson"},
        "where": {
          "createdAt": {
            "gt": "${DateTime.now().subtract(Duration(days: 7)).toString()}"
          } //TODO Remove redundant code
        }
      }
    });
    return result.either.fold(
        (l) => left(l),
        (r) =>
            right(IdDto.toDomainList<CardTransaction, CardTransactionDto>(r)));
  }
}
