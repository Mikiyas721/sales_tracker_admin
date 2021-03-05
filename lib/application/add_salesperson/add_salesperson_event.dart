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
      name: Name.create(''),
      phoneNumber: PhoneNumber.create(''),
      addSalespersonFailure: none(),
      hasRequested: false,
      hasSubmitted: false,
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
      hasRequested: false,
      addSalespersonFailure: Failure.getFailureWithOption(addSalesPersonFailure),
    );
  }
}
