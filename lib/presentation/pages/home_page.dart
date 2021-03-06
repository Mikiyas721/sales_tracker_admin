import 'package:admin_app/common/controller/controller_provider.dart';
import 'package:admin_app/presentation/controller/stats_controller.dart';
import 'package:admin_app/presentation/models/sales_status_view_model.dart';
import 'package:admin_app/presentation/views/sales_status_view.dart';
import 'package:admin_app/presentation/widgets/my_action_button.dart';
import 'package:flutter/material.dart';
import '../../common/common.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: 20.hPadding,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  50.vSpace,
                  ViewModelBuilder.withController<SalesStatusViewModel,
                          StatsController>(
                      create: () => StatsController(context),
                      onInit: (controller) => controller.onToday(true),
                      builder: (context, controller, model) {
                        return SalesStatusView(
                          onToday: controller.onToday,
                          onThisWeek: controller.onThisWeek,
                          onThisMonth: controller.onThisMonth,
                          salesStatusViewModel: model,
                          onReload: controller.onRefresh,
                        );
                      }),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.95,-0.87),
            child: IconButton(
              icon: Icon(Icons.arrow_forward_ios_outlined),
              onPressed: () {
                Navigator.pushNamed(context, '/currentStatusPage');
              },
            ),
          ),
          Positioned(
            left: 20,
            right: 20,
            bottom: 20,
            child: MyActionButton(
                label: 'Salespeople',
                onSubmit: () {
                  Navigator.pushNamed(context, '/salesPeoplePage');
                }),
          ),
        ],
      ),
    );
  }
}

