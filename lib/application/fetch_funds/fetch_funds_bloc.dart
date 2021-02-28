import 'dart:async';

import 'package:admin_app/common/bloc/bloc_helpers.dart';
import 'package:admin_app/common/failure.dart';
import 'package:admin_app/domain/entities/fund_transaction.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'fetch_funds_event.dart';

part 'fetch_funds_state.dart';

part 'fetch_funds_bloc.freezed.dart';

@injectable
class FetchFundsBloc extends Bloc<FetchFundsEvent, FetchFundsState> {
  FetchFundsBloc() : super(FetchFundsState.initial());

  @override
  Stream<FetchFundsState> mapEventToState(
    FetchFundsEvent event,
  ) async* {
    yield* event.handle(state);
  }
}
