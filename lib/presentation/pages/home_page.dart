import 'package:admin_app/common/controller/controller_provider.dart';
import 'package:admin_app/presentation/controllers/login_controller.dart';
import 'package:admin_app/presentation/controllers/stats_controller.dart';
import 'package:admin_app/presentation/models/sales_status_view_model.dart';
import 'package:admin_app/presentation/views/sales_status_view.dart';
import 'package:admin_app/presentation/widgets/my_action_button.dart';
import 'package:flutter/material.dart';
import '../../common/common.dart';
import '../../injection.dart';
import '../../application/splash/splash_bloc.dart';

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
              alignment: Alignment(0.9, -0.87),
              child: ControllerProvider<LoginController>(
                create: () => LoginController(context),
                builder: (context, controller) {
                  return InkWell(
                    child: CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.brown,
                        child: Text(
                          getInitials(getIt
                              .get<SplashBloc>()
                              .state
                              .user
                              .getOrElse(() => null)
                              ?.name
                              ?.value),
                          style: TextStyle(color: Colors.white),
                        )),
                    onTap:controller.onAccountTap
                  );
                },
              )),
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

String getInitials(String name) {
  if (name == null) return '?';
  List<String> split = name.split(' ');
  if (split.length >= 2)
    return '${split[0][0]}${split[1][0]}';
  else
    return '${split[0][0]}';
}
