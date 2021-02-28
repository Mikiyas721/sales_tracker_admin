part of 'add_salesperson_bloc.dart';

@freezed
abstract class AddSalespersonState extends BlocState with _$AddSalespersonState{
  const factory AddSalespersonState({
    Either<Failure, Name> name,
    Either<Failure, PhoneNumber> phoneNumber,
    Failure addSalespersonFailure,
    bool hasSubmitted,
    bool hasRequested,
    bool requestCompleted
}) = _AddSalespersonState;
  factory AddSalespersonState.initial()=>AddSalespersonState();
}

