import 'package:admin_app/common/controller/controller_provider.dart';
import 'package:admin_app/presentation/controllers/add_admin_controller.dart';
import 'package:admin_app/presentation/controllers/new_salesperson_controller.dart';
import 'package:admin_app/presentation/models/add_admin_view_model.dart';
import 'package:admin_app/presentation/widgets/my_action_button.dart';
import 'package:admin_app/presentation/widgets/my_text_field.dart';
import 'package:flutter/material.dart';
import '../../common/common.dart';

class AddAdminView extends StatelessWidget {
  final AddAdminViewModel addAdminViewModel;
  final void Function(String name) onNameChanged;
  final void Function(String phoneNumber) onPhoneNumberChanged;
  final VoidCallback onAdd;

  const AddAdminView(
      {Key key,
        @required this.addAdminViewModel,
        @required this.onAdd,
        @required this.onNameChanged,
        @required this.onPhoneNumberChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<AddAdminController>(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        MyTextField(
            icon: Icons.person_outline,
            labelText: 'name',
            errorText: addAdminViewModel.nameError,
            keyboardType: TextInputType.text,
            controller: controller.nameController,
            onChanged: onNameChanged),
        MyTextField(
            icon: Icons.phone,
            labelText: 'phone number',
            errorText: addAdminViewModel.phoneNumberError,
            controller: controller.phoneNumberController,
            onChanged: onPhoneNumberChanged),
        200.vSpace,
        MyActionButton(
          label: 'Add',
          onSubmit: onAdd,
          isLoading: addAdminViewModel.isAdding,
        ),
      ],
    );
  }
}
