import 'package:admin_app/presentation/models/sales_person_view_model.dart';
import 'package:flutter/material.dart';
import '../../common/common.dart';

class SalesPersonView extends StatelessWidget{
  final SalesPersonViewModel salesPersonViewModel;

  const SalesPersonView({Key key, @required this.salesPersonViewModel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, '/salesPersonStatusPage');
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),elevation: 5,
        margin: EdgeInsets.only(top: 9,left: 4,right: 4,bottom: 4),
        child: Container(
          padding: 15.allPadding,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(salesPersonViewModel.name, style: context.headline6,),
              Row(
                children: [
                  Icon(Icons.phone,color: Colors.grey,size: 18,),
                  3.hSpace,
                  Text(salesPersonViewModel.phoneNumber,style:context.caption)
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 40,right: 20,bottom: 10,top: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Total loan',style: context.headline6,),
                        Text('Total sales',style: context.headline6,),
                        Text('Total shops',style: context.headline6,),
                      ],
                    ),
                    25.hSpace,
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('${salesPersonViewModel.totalLoan} ETB',style: context.bodyText2,),
                        10.vSpace,
                        Text('${salesPersonViewModel.totalSales} ETB',style: context.bodyText2,),
                        10.vSpace,
                        Text('${salesPersonViewModel.totalShops}',style: context.bodyText2,),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}