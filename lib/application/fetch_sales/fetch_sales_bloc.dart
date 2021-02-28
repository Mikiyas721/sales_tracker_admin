import 'dart:async';

import 'package:admin_app/common/bloc/bloc_helpers.dart';
import 'package:admin_app/common/failure.dart';
import 'package:admin_app/domain/entities/sell_transaction.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'fetch_sales_event.dart';

part 'fetch_sales_state.dart';

part 'fetch_sales_bloc.freezed.dart';

@injectable
class FetchSalesBloc extends Bloc<FetchSalesEvent, FetchSalesState> {
  FetchSalesBloc() : super(FetchSalesState.initial());

  @override
  Stream<FetchSalesState> mapEventToState(
    FetchSalesEvent event,
  ) async* {
    yield* event.handle(state);
  }
}
