part of 'add_admin_bloc.dart';

@freezed
abstract class AddAdminState extends BlocState
    with _$AddAdminState {
  const factory AddAdminState(
      {Either<Failure, Name> name,
        Either<Failure, PhoneNumber> phoneNumber,
        Option<Failure> addSalespersonFailure,
        bool hasSubmitted,
        bool hasRequested,}) = _AddAdminState;

  factory AddAdminState.initial() => AddAdminState(
    name: Name.create(''),
    phoneNumber: PhoneNumber.create(''),
    addSalespersonFailure: none(),
    hasRequested: false,
    hasSubmitted: false,
  );
}
