import 'package:admin_app/common/controller/controller_provider.dart';
import 'package:admin_app/presentation/controllers/add_admin_controller.dart';
import 'package:admin_app/presentation/models/add_admin_view_model.dart';
import 'package:admin_app/presentation/views/add_admin_view.dart';
import 'package:flutter/material.dart';
import '../../common/common.dart';

class AddAdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Admin'),
      ),
      body: Padding(
        padding: 20.hPadding,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              100.vSpace,
              Text(
                'Enter\nadmin\ninformation',
                style: context.headline2,
              ),
              70.vSpace,
              ViewModelBuilder.withController<AddAdminViewModel, AddAdminController>(
                  create: () => AddAdminController(context),
                  builder: (context, controller, model) {
                    return AddAdminView(
                        addAdminViewModel: model,
                        onAdd: controller.onAdd,
                        onNameChanged: controller.onNameChanged,
                        onPhoneNumberChanged: controller.onPhoneNumberChanged);
                  }),
              20.vSpace
            ],
          ),
        ),
      ),
    );
  }
}
