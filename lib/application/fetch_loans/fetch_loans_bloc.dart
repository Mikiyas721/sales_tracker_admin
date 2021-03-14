import 'dart:async';

import 'package:admin_app/common/bloc/bloc_helpers.dart';
import 'package:admin_app/common/failure.dart';
import 'package:admin_app/domain/entities/card_transaction.dart';
import 'package:admin_app/domain/entities/salesperson.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'fetch_loans_event.dart';

part 'fetch_loans_state.dart';

part 'fetch_loans_bloc.freezed.dart';

@injectable
class FetchLoansBloc extends Bloc<FetchLoansEvent, FetchLoansState> {
  FetchLoansBloc() : super(FetchLoansState.initial());

  @override
  Stream<FetchLoansState> mapEventToState(
    FetchLoansEvent event,
  ) async* {
    yield* event.handle(state);
  }
}
