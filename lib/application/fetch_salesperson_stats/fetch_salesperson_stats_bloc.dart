import 'dart:async';

import 'package:admin_app/common/bloc/bloc_helpers.dart';
import 'package:admin_app/common/failure.dart';
import 'package:admin_app/domain/value_objects/stats.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'fetch_salesperson_stats_event.dart';
part 'fetch_salesperson_stats_state.dart';

part 'fetch_salesperson_stats_bloc.freezed.dart';

@injectable
class FetchSalespersonStatsBloc extends Bloc<FetchSalespersonStatsEvent, FetchSalespersonStatsState> {
  FetchSalespersonStatsBloc() : super(FetchSalespersonStatsState.initial());

  @override
  Stream<FetchSalespersonStatsState> mapEventToState(
    FetchSalespersonStatsEvent event,
  ) async* {
    yield* event.handle(state);
  }
}
