import 'dart:async';

import 'package:admin_app/common/bloc/bloc_helpers.dart';
import 'package:admin_app/common/failure.dart';
import 'package:admin_app/domain/value_objects/name.dart';
import 'package:admin_app/domain/value_objects/phone_number.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'add_admin_event.dart';
part 'add_admin_state.dart';

part 'add_admin_bloc.freezed.dart';

@injectable
class AddAdminBloc extends Bloc<AddAdminEvent, AddAdminState> {
  AddAdminBloc() : super(AddAdminState.initial());

  @override
  Stream<AddAdminState> mapEventToState(
    AddAdminEvent event,
  ) async* {
    yield* event.handle(state);
  }
}
