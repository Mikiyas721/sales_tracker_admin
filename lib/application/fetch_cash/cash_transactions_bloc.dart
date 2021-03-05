import 'dart:async';

import 'package:admin_app/common/bloc/bloc_helpers.dart';
import 'package:admin_app/common/failure.dart';
import 'package:admin_app/domain/entities/cash_transaction.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'cash_transactions_event.dart';

part 'cash_transactions_state.dart';

part 'cash_transactions_bloc.freezed.dart';

@injectable
class CashTransactionsBloc extends Bloc<CashTransactionsEvent, CashTransactionsState> {
  CashTransactionsBloc() : super(CashTransactionsState.initial());

  @override
  Stream<CashTransactionsState> mapEventToState(
    CashTransactionsEvent event,
  ) async* {
    yield* event.handle(state);
  }
}
