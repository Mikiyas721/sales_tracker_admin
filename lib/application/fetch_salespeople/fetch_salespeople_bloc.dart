import 'dart:async';

import 'package:admin_app/common/bloc/bloc_helpers.dart';
import 'package:admin_app/common/failure.dart';
import 'package:admin_app/domain/entities/salesperson.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'fetch_salespeople_event.dart';

part 'fetch_salespeople_state.dart';

part 'fetch_salespeople_bloc.freezed.dart';

@injectable
class FetchSalespeopleBloc
    extends Bloc<FetchSalespeopleEvent, FetchSalespeopleState> {
  FetchSalespeopleBloc() : super(FetchSalespeopleState.initial());

  @override
  Stream<FetchSalespeopleState> mapEventToState(
    FetchSalespeopleEvent event,
  ) async* {
    yield* event.handle(state);
  }
}
