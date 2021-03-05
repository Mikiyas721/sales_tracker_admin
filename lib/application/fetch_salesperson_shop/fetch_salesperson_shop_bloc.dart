import 'dart:async';

import 'package:admin_app/common/bloc/bloc_helpers.dart';
import 'package:admin_app/common/failure.dart';
import 'package:admin_app/domain/entities/shop.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'fetch_salesperson_shop_event.dart';

part 'fetch_salesperson_shop_state.dart';

part 'fetch_salesperson_shop_bloc.freezed.dart';

@injectable
class FetchSalespersonShopsBloc
    extends Bloc<FetchSalespersonShopsEvent, FetchSalespersonShopsState> {
  FetchSalespersonShopsBloc() : super(FetchSalespersonShopsState.initial());

  @override
  Stream<FetchSalespersonShopsState> mapEventToState(
    FetchSalespersonShopsEvent event,
  ) async* {
    yield* event.handle(state);
  }
}
