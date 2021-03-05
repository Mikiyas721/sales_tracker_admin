import 'dart:async';

import 'package:admin_app/common/bloc/bloc_helpers.dart';
import 'package:admin_app/common/failure.dart';
import 'package:admin_app/domain/entities/card_transaction.dart';
import 'package:admin_app/domain/entities/cash_transaction.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'fetch_total_stats_event.dart';

part 'fetch_total_stats_state.dart';

part 'fetch_total_stats_bloc.freezed.dart';

@injectable
class FetchTotalStatsBloc
    extends Bloc<FetchTotalStatsEvent, FetchTotalStatsState> {
  FetchTotalStatsBloc() : super(FetchTotalStatsState.initial());

  @override
  Stream<FetchTotalStatsState> mapEventToState(
    FetchTotalStatsEvent event,
  ) async* {
    yield* event.handle(state);
  }
}
