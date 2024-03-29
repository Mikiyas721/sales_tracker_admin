import 'package:admin_app/common/controller/controller_provider.dart';
import 'package:admin_app/presentation/controllers/new_salesperson_controller.dart';
import 'package:admin_app/presentation/models/new_salesperson_view_model.dart';
import 'package:admin_app/presentation/widgets/my_action_button.dart';
import 'package:admin_app/presentation/widgets/my_text_field.dart';
import 'package:flutter/material.dart';
import '../../common/common.dart';

class NewSalesPersonView extends StatelessWidget {
  final NewSalesPersonViewModel newSalesPersonViewModel;
  final void Function(String name) onNameChanged;
  final void Function(String phoneNumber) onPhoneNumberChanged;
  final VoidCallback onAdd;

  const NewSalesPersonView(
      {Key key,
      @required this.newSalesPersonViewModel,
      @required this.onAdd,
      @required this.onNameChanged,
      @required this.onPhoneNumberChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<NewSalespersonController>(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        MyTextField(
            icon: Icons.person_outline,
            labelText: 'name',
            errorText: newSalesPersonViewModel.nameError,
            keyboardType: TextInputType.text,
            controller: controller.nameController,
            onChanged: onNameChanged),
        MyTextField(
            icon: Icons.phone,
            labelText: 'phone number',
            errorText: newSalesPersonViewModel.phoneNumberError,
            controller: controller.phoneNumberController,
            onChanged: onPhoneNumberChanged),
        200.vSpace,
        MyActionButton(
          label: 'Add',
          onSubmit: onAdd,
          isLoading: newSalesPersonViewModel.isAdding,
        ),
      ],
    );
  }
}
