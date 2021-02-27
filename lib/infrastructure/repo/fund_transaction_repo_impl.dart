import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../common/failure.dart';
import '../../domain/entities/fund_transaction.dart';
import '../../domain/ports/fund_transaction_repo.dart';
import '../../infrastructure/data_sources/fund_transaction_data_source.dart';
import '../../infrastructure/dto/fund_transaction_dto.dart';

@LazySingleton(as: IFundTransactionRepo)
class FundTransactionRepoImpl implements IFundTransactionRepo {
  final FundTransactionCrudDataSource fundTransactionCrudDataSource;

  FundTransactionRepoImpl(this.fundTransactionCrudDataSource);

  @override
  Future<Either<Failure, List<FundTransaction>>> fetchFunds(String salesPersonId, String shopId) {
  }



}
