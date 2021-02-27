import 'package:admin_app/common/failure.dart';
import 'package:dartz/dartz.dart';

abstract class StatsFailure extends Failure {}

class InSufficientDataFailure extends StatsFailure {
  @override
  String get message => "Detailed Data must be at least 4 units long";
}

class Stats {
  final double totalSoldAmount;
  final double totalFundedAmount;
  final double totalLoanedAmount;
  final List<Detail> detailedData;

  Stats._(
    this.totalSoldAmount,
    this.totalFundedAmount,
    this.totalLoanedAmount,
    this.detailedData,
  );

  static Either<StatsFailure, Stats> create(
      {double totalSoldAmount = 0,
      double totalFundedAmount = 0,
      double totalLoanedAmount = 0,
      List<Detail> detailedData}) {
    if (detailedData.length < 4) return left(InSufficientDataFailure());
    return right(Stats._(
        totalSoldAmount, totalFundedAmount, totalLoanedAmount, detailedData));
  }
}

class Detail {
  final double total;
  final double part;
  final String label;

  Detail(this.total, this.part, this.label);
}
