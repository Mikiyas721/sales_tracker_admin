part of 'add_salesperson_bloc.dart';

abstract class AddSalespersonEvent extends BlocEvent<AddSalespersonState> {}

class AddSalesPersonNameChangedEvent extends AddSalespersonEvent {
  final String name;

  AddSalesPersonNameChangedEvent(this.name);

  @override
  Stream<AddSalespersonState> handle(
      AddSalespersonState currentState) async* {
    yield currentState.copyWith(
        name: Name.create(name));
  }
}
class AddSalesPersonPhoneNumberChangedEvent extends AddSalespersonEvent {
  final String phoneNumber;

  AddSalesPersonPhoneNumberChangedEvent(this.phoneNumber);

  @override
  Stream<AddSalespersonState> handle(
      AddSalespersonState currentState) async* {
    yield currentState.copyWith(
        phoneNumber: PhoneNumber.create(phoneNumber));
  }
}

class AddSalesPersonSubmittedEvent extends AddSalespersonEvent {
  @override
  Stream<AddSalespersonState> handle(
      AddSalespersonState currentState) async* {
    yield currentState.copyWith(hasSubmitted: true);
  }
}

class AddSalesPersonRequestedEvent extends AddSalespersonEvent {
  @override
  Stream<AddSalespersonState> handle(
      AddSalespersonState currentState) async* {
    yield currentState.copyWith(hasRequested: true);
  }
}

class AddSalesPersonSucceededEvent extends AddSalespersonEvent {
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

class AddSalesPersonFailedEvent extends AddSalespersonEvent {
  final Failure addSalesPersonFailure;

  AddSalesPersonFailedEvent(this.addSalesPersonFailure);

  @override
  Stream<AddSalespersonState> handle(
      AddSalespersonState currentState) async* {
    yield currentState.copyWith(
      addSalespersonFailure: addSalesPersonFailure,
      hasRequested: false,
    );
  }
}
