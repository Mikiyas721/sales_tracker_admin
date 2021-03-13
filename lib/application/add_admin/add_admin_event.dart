part of 'add_admin_bloc.dart';

abstract class AddAdminEvent extends BlocEvent<AddAdminState> {}

class AddAdminNameChangedEvent extends AddAdminEvent {
  final String name;

  AddAdminNameChangedEvent(this.name);

  @override
  Stream<AddAdminState> handle(
      AddAdminState currentState) async* {
    yield currentState.copyWith(
        name: Name.create(name));
  }
}
class AddAdminPhoneNumberChangedEvent extends AddAdminEvent {
  final String phoneNumber;

  AddAdminPhoneNumberChangedEvent(this.phoneNumber);

  @override
  Stream<AddAdminState> handle(
      AddAdminState currentState) async* {
    yield currentState.copyWith(
        phoneNumber: PhoneNumber.create(phoneNumber));
  }
}

class AddAdminSubmittedEvent extends AddAdminEvent {
  @override
  Stream<AddAdminState> handle(
      AddAdminState currentState) async* {
    yield currentState.copyWith(hasSubmitted: true);
  }
}

class AddAdminRequestedEvent extends AddAdminEvent {
  @override
  Stream<AddAdminState> handle(
      AddAdminState currentState) async* {
    yield currentState.copyWith(hasRequested: true);
  }
}

class AddAdminSucceededEvent extends AddAdminEvent {
  @override
  Stream<AddAdminState> handle(
      AddAdminState currentState) async* {
    yield currentState.copyWith(
      name: Name.create(''),
      phoneNumber: PhoneNumber.create(''),
      addSalespersonFailure: none(),
      hasRequested: false,
      hasSubmitted: false,
    );
  }
}

class AddAdminFailedEvent extends AddAdminEvent {
  final Failure addSalesPersonFailure;

  AddAdminFailedEvent(this.addSalesPersonFailure);

  @override
  Stream<AddAdminState> handle(
      AddAdminState currentState) async* {
    yield currentState.copyWith(
      hasRequested: false,
      addSalespersonFailure: Failure.getFailureWithOption(addSalesPersonFailure),
    );
  }
}
