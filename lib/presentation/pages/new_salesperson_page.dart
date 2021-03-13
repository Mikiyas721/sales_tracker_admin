import 'package:admin_app/common/controller/controller_provider.dart';
import 'package:admin_app/presentation/controllers/new_salesperson_controller.dart';
import 'package:admin_app/presentation/models/new_salesperson_view_model.dart';
import 'package:admin_app/presentation/views/new_sales_person_view.dart';
import 'package:flutter/material.dart';
import '../../common/common.dart';

class NewSalesPersonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Salesperson'),
      ),
      body: Padding(
        padding: 20.hPadding,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              100.vSpace,
              Text(
                'Enter\nsalesperson\ninformation',
                style: context.headline2,
              ),
              70.vSpace,
              ViewModelBuilder.withController<NewSalesPersonViewModel, NewSalespersonController>(
                  create: () => NewSalespersonController(context),
                  builder: (context, controller, model) {
                    return NewSalesPersonView(
                        newSalesPersonViewModel: model,
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
