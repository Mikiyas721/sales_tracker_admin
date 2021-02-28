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
        child: ViewModelBuilder.withController<SalespeopleViewModel,SalespeopleController>(
            create: () => SalespeopleController(context),
            builder: (context, controller, model) {
              if (controller.bloc.state.isLoading)
                return Center(child: CircularProgressIndicator());
              if (controller.bloc.state.hasLoaded &&
                  controller.bloc.state.salespeople.isEmpty)
                return Center(
                    child: Text('No stats for this sales person'));
              if (controller.bloc.state.hasLoaded &&
                  controller.bloc.state.salespeopleLoadingFailure.message != null)
                return Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(controller.bloc.state.salespeopleLoadingFailure.message),
                      IconButton(
                          icon: Icon(Icons.refresh),
                          onPressed: controller.loadSalespeople)
                    ],
                  ),
                );
              return SalespeopleView(salespeople: model);
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
