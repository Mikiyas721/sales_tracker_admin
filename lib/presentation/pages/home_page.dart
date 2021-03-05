import 'package:admin_app/common/controller/controller_provider.dart';
import 'package:admin_app/presentation/controller/stats_controller.dart';
import 'package:admin_app/presentation/models/sales_status_view_model.dart';
import 'package:admin_app/presentation/views/sales_status_view.dart';
import 'package:admin_app/presentation/widgets/my_action_button.dart';
import 'package:flutter/material.dart';
import '../../common/common.dart';

class HomePage extends StatelessWidget {
  // could it be a StatefulWidget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: 20.hPadding,
        child: SingleChildScrollView(
          child: Column(
            children: [
              50.vSpace,
              Stack(
                children: [
                  ViewModelBuilder.withController<SalesStatusViewModel,
                          StatsController>(
                      create: () => StatsController(context),
                      onInit: (controller) => controller.onToday(true),
                      builder: (context, controller, model) {
                        return SalesStatusView(
                            onToday: controller.onToday,
                            onThisWeek: controller.onThisWeek,
                            onThisMonth: controller.onThisMonth,
                            salesStatusViewModel: model);
                      }),
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      icon: Icon(Icons.arrow_forward_ios_outlined),
                      onPressed: () {
                        Navigator.pushNamed(context, '/currentStatusPage');
                      },
                    ),
                  ),
                ],
              ),
              70.vSpace,
              MyActionButton(
                  label: 'Salespeople',
                  onSubmit: () {
                    Navigator.pushNamed(context, '/salesPeoplePage');
                  }),
              25.vSpace
            ],
          ),
        ),
      ),
    );
  }
}
