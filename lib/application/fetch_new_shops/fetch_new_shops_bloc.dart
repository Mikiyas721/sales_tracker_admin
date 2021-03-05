import 'dart:async';

import 'package:admin_app/common/bloc/bloc_helpers.dart';
import 'package:admin_app/common/failure.dart';
import 'package:admin_app/domain/entities/shop.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'fetch_new_shops_event.dart';

part 'fetch_new_shops_state.dart';

part 'fetch_new_shops_bloc.freezed.dart';

@injectable
class FetchNewShopsBloc extends Bloc<FetchNewShopsEvent, FetchNewShopsState> {
  FetchNewShopsBloc() : super(FetchNewShopsState.initial());

  @override
  Stream<FetchNewShopsState> mapEventToState(
    FetchNewShopsEvent event,
  ) async* {
    yield* event.handle(state);
  }
}
