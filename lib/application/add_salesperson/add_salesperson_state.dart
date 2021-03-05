part of 'add_salesperson_bloc.dart';

@freezed
abstract class AddSalespersonState extends BlocState
    with _$AddSalespersonState {
  const factory AddSalespersonState(
      {Either<Failure, Name> name,
      Either<Failure, PhoneNumber> phoneNumber,
      Option<Failure> addSalespersonFailure,
      bool hasSubmitted,
      bool hasRequested,}) = _AddSalespersonState;

  factory AddSalespersonState.initial() => AddSalespersonState(
        name: Name.create(''),
        phoneNumber: PhoneNumber.create(''),
        addSalespersonFailure: none(),
        hasRequested: false,
        hasSubmitted: false,
      );
}
