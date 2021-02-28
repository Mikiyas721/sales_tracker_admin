import 'dart:async';

import 'package:admin_app/common/bloc/bloc_helpers.dart';
import 'package:admin_app/common/failure.dart';
import 'package:admin_app/domain/entities/shop.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'fetch_salesperson_shop_event.dart';

part 'fetch_salesperson_shop_state.dart';

part 'fetch_salesperson_shop_bloc.freezed.dart';

class FetchSalespersonShopBloc
    extends Bloc<FetchSalespersonShopEvent, FetchSalespersonShopState> {
  FetchSalespersonShopBloc() : super(FetchSalespersonShopState.initial());

  @override
  Stream<FetchSalespersonShopState> mapEventToState(
    FetchSalespersonShopEvent event,
  ) async* {
    yield* event.handle(state);
  }
}
