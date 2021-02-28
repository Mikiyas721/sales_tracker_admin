import 'package:admin_app/application/add_salesperson/add_salesperson_bloc.dart';
import 'package:admin_app/common/controller/controller.dart';
import 'package:admin_app/common/controller/toast_mixin.dart';
import 'package:admin_app/domain/entities/salesperson.dart';
import 'package:admin_app/domain/use_cases/add_salesperson.dart';
import 'package:admin_app/injection.dart';
import 'package:admin_app/presentation/models/new_salesperson_view_model.dart';
import 'package:flutter/cupertino.dart';

/// why not put a context in the parent
class NewSalespersonController extends BlocViewModelController<
    AddSalespersonBloc,
    AddSalespersonEvent,
    AddSalespersonState,
    NewSalesPersonViewModel> with ToastMixin {
  final BuildContext context;

  NewSalespersonController(this.context)
      : super(getIt.get<AddSalespersonBloc>(), true);

  @override
  NewSalesPersonViewModel mapStateToViewModel(AddSalespersonState s) {
    return NewSalesPersonViewModel(
        name: s.name.fold((l) => null, (r) => r.value),
        nameError:
            s.hasSubmitted ? s.name.fold((l) => l.message, (r) => null) : null,
        phoneNumber: s.name.fold((l) => null, (r) => r.value),
        phoneNumberError: s.hasSubmitted
            ? s.phoneNumber.fold((l) => l.message, (r) => null)
            : null,
        isAdding: s.hasRequested);
  }

  void onNameChanged(String name) {
    bloc.add(AddSalespersonNameChangedEvent(name));
  }

  void onPhoneNumberChanged(String phoneNumber) {
    bloc.add(AddSalespersonNameChangedEvent(phoneNumber));
  }

  void onAdd() {
    bloc.add(AddSalespersonSubmittedEvent());
    final salesPerson = Salesperson.createFromInputs(
        name: bloc.state.name.getOrElse(() => null),
        phoneNumber: bloc.state.phoneNumber.getOrElse(() => null));
    salesPerson.fold(() {}, (a) async {
      final result = await getIt.get<AddSalesperson>().execute(a);
      result.fold((l) {
        bloc.add(AddSalespersonFailedEvent(l));
      }, (r) {
        bloc.add(AddSalespersonSubmittedEvent());
        toastSuccess('Salesperson Added Successfully');
      });
    });
  }
}
