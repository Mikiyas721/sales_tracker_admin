import 'package:admin_app/presentation/models/new_sales_person_view_model.dart';
import 'package:admin_app/presentation/views/new_sales_person_view.dart';
import 'package:flutter/material.dart';
import '../../common/common.dart';

class NewSalesPersonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('New Salesperson'),),
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
              NewSalesPersonView(
                  newSalesPersonViewModel: NewSalesPersonViewModel(),
                  onAdd: (){},
                  onNameChanged: (String newValue){},
                  onPhoneNumberChanged: (String newValue){}),
              20.vSpace
            ],
          ),
        ),
      ),
    );
  }
}
