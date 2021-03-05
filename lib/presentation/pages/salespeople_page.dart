import 'package:admin_app/common/controller/controller_provider.dart';
import 'package:admin_app/presentation/controller/salespeople_controller.dart';
import 'package:admin_app/presentation/models/salespeople_view_model.dart';
import 'package:admin_app/presentation/views/salespeople_view.dart';
import 'package:flutter/material.dart';
import '../../common/common.dart';

class SalespeoplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Salespeople'),
      ),
      body: Padding(
        padding: 20.hPadding,
        child: ViewModelBuilder.withController<SalespeopleViewModel,
                SalespeopleController>(
            create: () => SalespeopleController(context),
            onInit: (controller) => controller.loadSalespeople(),
            builder: (context, controller, model) {
              return SalespeopleView(
                salespeople: model,
                onReload: controller.loadSalespeople,
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/newSalesPersonPage');
        },
        backgroundColor: context.primaryColor,
        child: Icon(Icons.add),
      ),
    );
  }
}
