import 'package:admin_app/presentation/pages/current_status_page.dart';
import 'package:admin_app/presentation/pages/fund_transactions_page.dart';
import 'package:admin_app/presentation/pages/home_page.dart';
import 'package:admin_app/presentation/pages/new_sales_person_page.dart';
import 'package:admin_app/presentation/pages/sale_transactions_page.dart';
import 'package:admin_app/presentation/pages/sales_people_page.dart';
import 'package:admin_app/presentation/pages/sales_person_shops_page.dart';
import 'package:admin_app/presentation/pages/sales_person_status_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sales Tracker',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Color(0xff5837B6),
          secondaryHeaderColor: Color(0xff693DE5),
          appBarTheme: AppBarTheme(
              color: Colors.white,
              actionsIconTheme: IconThemeData(color: Colors.black),
              iconTheme: IconThemeData(color: Colors.black),
              textTheme: TextTheme(
                  headline6: GoogleFonts.poppins(
                    fontSize: 24,
                    color: Colors.black,
                  ))),
          textTheme: TextTheme(
              headline2: GoogleFonts.poppins(fontSize: 30, color: Colors.black),
              headline3: GoogleFonts.poppins(fontSize: 26, color: Colors.black),
              headline4: GoogleFonts.poppins(fontSize: 22, color: Colors.black),
              headline5: GoogleFonts.poppins(fontSize: 18, color: Colors.black),
              headline6: GoogleFonts.poppins(fontSize: 16, color: Colors.black),

              bodyText2: GoogleFonts.montserrat(fontSize: 14, color: Colors.black87),
              caption: GoogleFonts.montserrat(fontSize: 12,color: Colors.grey)
          )),
      routes: routes,
      initialRoute: '/',
      );
  }
}
final routes = {
  '/': (BuildContext context)=> HomePage(),
  '/salesPeoplePage': (BuildContext context)=> SalesPeoplePage(),
  '/newSalesPersonPage': (BuildContext context)=> NewSalesPersonPage(),
  '/salesPersonStatusPage': (BuildContext context)=> SalesPersonStatusPage(),
  '/salesPersonShopsPage': (BuildContext context)=> SalesPersonShopsPage(),
  '/saleTransactionsPage': (BuildContext context)=> SaleTransactionsPage(),
  '/fundTransactionsPage': (BuildContext context)=> FundTransactionsPage(),
  '/currentStatusPage': (BuildContext context)=> CurrentStatusPage(),
};
