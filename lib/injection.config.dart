// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/add_salesperson/add_salesperson_bloc.dart' as _i3;
import 'application/fetch_funds/fetch_funds_bloc.dart' as _i4;
import 'application/fetch_loans/fetch_loans_bloc.dart' as _i5;
import 'application/fetch_new_shops/fetch_new_shops_bloc.dart' as _i6;
import 'application/fetch_recently_sold/fetch_recently_sold_bloc.dart' as _i7;
import 'application/fetch_sales/fetch_sales_bloc.dart' as _i8;
import 'application/fetch_salespeople/fetch_salespeople_bloc.dart' as _i12;
import 'application/fetch_salesperson_stats/fetch_salesperson_stats_bloc.dart'
    as _i13;
import 'application/fetch_total_stats/fetch_total_stats_bloc.dart' as _i17;
import 'common/data_source/rest_datasource/rest_datasource.dart' as _i18;
import 'common/dio_rest_datasource.dart' as _i19;
import 'domain/ports/fund_transaction_repo.dart' as _i24;
import 'domain/ports/sale_transaction_repo.dart' as _i26;
import 'domain/ports/sales_person_repo.dart' as _i28;
import 'domain/ports/shop_repo.dart' as _i30;
import 'domain/use_cases/add_salesperson.dart' as _i32;
import 'domain/use_cases/fetch_loans.dart' as _i33;
import 'domain/use_cases/fetch_new_shops.dart' as _i34;
import 'domain/use_cases/fetch_recently_sold.dart' as _i35;
import 'domain/use_cases/fetch_salespeople.dart' as _i36;
import 'domain/use_cases/fetch_salesperson_funds_with_shop.dart' as _i37;
import 'domain/use_cases/fetch_salesperson_sales_with_shop.dart' as _i38;
import 'domain/use_cases/fetch_salesperson_shops.dart' as _i39;
import 'domain/use_cases/fetch_salesperson_this_month_stats.dart' as _i9;
import 'domain/use_cases/fetch_salesperson_this_week_stats.dart' as _i10;
import 'domain/use_cases/fetch_salesperson_today_stats.dart' as _i11;
import 'domain/use_cases/fetch_this_month_stats.dart' as _i14;
import 'domain/use_cases/fetch_this_week_stats.dart' as _i15;
import 'domain/use_cases/fetch_today_stats.dart' as _i16;
import 'infrastructure/data_sources/fund_transaction_data_source.dart' as _i23;
import 'infrastructure/data_sources/sale_transaction_data_source.dart' as _i20;
import 'infrastructure/data_sources/sales_person_data_source.dart' as _i21;
import 'infrastructure/data_sources/shop_data_source.dart' as _i22;
import 'infrastructure/repo/fund_transaction_repo_impl.dart' as _i25;
import 'infrastructure/repo/sale_transaction_repo_impl.dart' as _i27;
import 'infrastructure/repo/sales_person_repo_impl.dart' as _i29;
import 'infrastructure/repo/shop_repo_impl.dart'
    as _i31; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.AddSalespersonBloc>(() => _i3.AddSalespersonBloc());
  gh.factory<_i4.FetchFundsBloc>(() => _i4.FetchFundsBloc());
  gh.factory<_i5.FetchLoansBloc>(() => _i5.FetchLoansBloc());
  gh.factory<_i6.FetchNewShopsBloc>(() => _i6.FetchNewShopsBloc());
  gh.factory<_i7.FetchRecentlySoldBloc>(() => _i7.FetchRecentlySoldBloc());
  gh.factory<_i8.FetchSalesBloc>(() => _i8.FetchSalesBloc());
  gh.lazySingleton<_i9.FetchSalespersonThisMonthStats>(
      () => _i9.FetchSalespersonThisMonthStats(get<dynamic>(), get<dynamic>()));
  gh.lazySingleton<_i10.FetchSalespersonThisWeekStats>(
      () => _i10.FetchSalespersonThisWeekStats(get<dynamic>(), get<dynamic>()));
  gh.lazySingleton<_i11.FetchSalespersonTodayStats>(
      () => _i11.FetchSalespersonTodayStats(get<dynamic>(), get<dynamic>()));
  gh.factory<_i12.FetchSalespeopleBloc>(() => _i12.FetchSalespeopleBloc());
  gh.factory<_i13.FetchSalespersonStatsBloc>(
      () => _i13.FetchSalespersonStatsBloc());
  gh.lazySingleton<_i14.FetchThisMonthStats>(
      () => _i14.FetchThisMonthStats(get<dynamic>(), get<dynamic>()));
  gh.lazySingleton<_i15.FetchThisWeekStats>(
      () => _i15.FetchThisWeekStats(get<dynamic>(), get<dynamic>()));
  gh.lazySingleton<_i16.FetchTodayStats>(
      () => _i16.FetchTodayStats(get<dynamic>(), get<dynamic>()));
  gh.factory<_i17.FetchTotalStatsBloc>(() => _i17.FetchTotalStatsBloc());
  gh.lazySingleton<_i18.RestDataSource>(() => _i19.DioRestDataSource());
  gh.lazySingleton<_i20.SaleTransactionCrudDataSource>(
      () => _i20.SaleTransactionLoopbackDataSource(get<_i18.RestDataSource>()));
  gh.lazySingleton<_i21.SalesPersonCrudDataSource>(
      () => _i21.SalesPersonLoopbackDataSource(get<_i18.RestDataSource>()));
  gh.lazySingleton<_i22.ShopCrudDataSource>(
      () => _i22.ShopLoopbackDataSource(get<_i18.RestDataSource>()));
  gh.lazySingleton<_i23.FundTransactionCrudDataSource>(
      () => _i23.FundTransactionLoopbackDataSource(get<_i18.RestDataSource>()));
  gh.lazySingleton<_i24.IFundTransactionRepo>(() =>
      _i25.FundTransactionRepoImpl(get<_i23.FundTransactionCrudDataSource>()));
  gh.lazySingleton<_i26.ISaleTransactionRepo>(() =>
      _i27.SaleTransactionRepoImpl(get<_i20.SaleTransactionCrudDataSource>()));
  gh.factory<_i28.ISalesPersonRepo>(
      () => _i29.SalesPersonRepoImpl(get<_i21.SalesPersonCrudDataSource>()));
  gh.lazySingleton<_i30.IShopRepo>(
      () => _i31.ShopRepoImpl(get<_i22.ShopCrudDataSource>()));
  gh.lazySingleton<_i32.AddSalesperson>(
      () => _i32.AddSalesperson(get<_i28.ISalesPersonRepo>()));
  gh.lazySingleton<_i33.FetchLoans>(
      () => _i33.FetchLoans(get<_i26.ISaleTransactionRepo>()));
  gh.lazySingleton<_i34.FetchNewShops>(
      () => _i34.FetchNewShops(get<_i30.IShopRepo>()));
  gh.lazySingleton<_i35.FetchRecentlySold>(
      () => _i35.FetchRecentlySold(get<_i26.ISaleTransactionRepo>()));
  gh.lazySingleton<_i36.FetchSalespeople>(
      () => _i36.FetchSalespeople(get<_i28.ISalesPersonRepo>()));
  gh.lazySingleton<_i37.FetchSalespersonFundsWithShop>(() =>
      _i37.FetchSalespersonFundsWithShop(get<_i24.IFundTransactionRepo>()));
  gh.lazySingleton<_i38.FetchSalespersonSalesWithShop>(() =>
      _i38.FetchSalespersonSalesWithShop(get<_i26.ISaleTransactionRepo>()));
  gh.lazySingleton<_i39.FetchSalespersonShops>(
      () => _i39.FetchSalespersonShops(get<_i30.IShopRepo>()));
  return get;
}
