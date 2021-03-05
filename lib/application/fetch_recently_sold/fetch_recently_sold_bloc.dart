import 'dart:async';

import 'package:admin_app/common/bloc/bloc_helpers.dart';
import 'package:admin_app/common/failure.dart';
import 'package:admin_app/domain/entities/card_transaction.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'fetch_recently_sold_event.dart';

part 'fetch_recently_sold_state.dart';

part 'fetch_recently_sold_bloc.freezed.dart';

@injectable
class FetchRecentlySoldBloc
    extends Bloc<FetchRecentlySoldEvent, FetchRecentlySoldState> {
  FetchRecentlySoldBloc() : super(FetchRecentlySoldState.initial());

  @override
  Stream<FetchRecentlySoldState> mapEventToState(
    FetchRecentlySoldEvent event,
  ) async* {
    yield* event.handle(state);
  }
}
