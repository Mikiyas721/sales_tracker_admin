part of 'add_salesperson_bloc.dart';

abstract class AddSalespersonEvent extends BlocEvent<AddSalespersonState> {}

class AddSalespersonNameChangedEvent extends AddSalespersonEvent {
  final String name;

  AddSalespersonNameChangedEvent(this.name);

  @override
  Stream<AddSalespersonState> handle(
      AddSalespersonState currentState) async* {
    yield currentState.copyWith(
        name: Name.create(name));
  }
}
class AddSalespersonPhoneNumberChangedEvent extends AddSalespersonEvent {
  final String phoneNumber;

  AddSalespersonPhoneNumberChangedEvent(this.phoneNumber);

  @override
  Stream<AddSalespersonState> handle(
      AddSalespersonState currentState) async* {
    yield currentState.copyWith(
        phoneNumber: PhoneNumber.create(phoneNumber));
  }
}

class AddSalespersonSubmittedEvent extends AddSalespersonEvent {
  @override
  Stream<AddSalespersonState> handle(
      AddSalespersonState currentState) async* {
    yield currentState.copyWith(hasSubmitted: true);
  }
}

class AddSalespersonRequestedEvent extends AddSalespersonEvent {
  @override
  Stream<AddSalespersonState> handle(
      AddSalespersonState currentState) async* {
    yield currentState.copyWith(hasRequested: true);
  }
}

class AddSalespersonSucceededEvent extends AddSalespersonEvent {
  @override
  Stream<AddSalespersonState> handle(
      AddSalespersonState currentState) async* {
    yield currentState.copyWith(
      name: null,
      phoneNumber: null,
      addSalespersonFailure: null,
      hasRequested: false,
      hasSubmitted: false,
      requestCompleted: true,
    );
  }
}

class AddSalespersonFailedEvent extends AddSalespersonEvent {
  final Failure addSalesPersonFailure;

  AddSalespersonFailedEvent(this.addSalesPersonFailure);

  @override
  Stream<AddSalespersonState> handle(
      AddSalespersonState currentState) async* {
    yield currentState.copyWith(
      addSalespersonFailure: addSalesPersonFailure,
      hasRequested: false,
    );
  }
}
