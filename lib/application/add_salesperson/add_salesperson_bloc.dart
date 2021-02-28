import 'dart:async';

import 'package:admin_app/common/failure.dart';
import 'package:admin_app/domain/value_objects/name.dart';
import 'package:admin_app/domain/value_objects/phone_number.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../common/bloc/bloc_helpers.dart';

part 'add_salesperson_event.dart';

part 'add_salesperson_state.dart';

part 'add_salesperson_bloc.freezed.dart';

@injectable
class AddSalespersonBloc
    extends Bloc<AddSalespersonEvent, AddSalespersonState> {
  AddSalespersonBloc() : super(AddSalespersonState.initial());

  @override
  Stream<AddSalespersonState> mapEventToState(
    AddSalespersonEvent event,
  ) async* {
    yield* event.handle(state);
  }
}
