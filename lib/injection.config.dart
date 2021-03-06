// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/add_salesperson/add_salesperson_bloc.dart' as _i3;
import 'application/fetch_cards/card_transactions_bloc.dart' as _i4;
import 'application/fetch_cash/cash_transactions_bloc.dart' as _i5;
import 'application/fetch_loans/fetch_loans_bloc.dart' as _i6;
import 'application/fetch_new_shops/fetch_new_shops_bloc.dart' as _i7;
import 'application/fetch_recently_sold/fetch_recently_sold_bloc.dart' as _i8;
import 'application/fetch_salespeople/fetch_salespeople_bloc.dart' as _i9;
import 'application/fetch_salesperson_shop/fetch_salesperson_shop_bloc.dart'
    as _i10;
import 'application/fetch_salesperson_stats/fetch_salesperson_stats_bloc.dart'
    as _i11;
import 'application/fetch_total_stats/fetch_total_stats_bloc.dart' as _i12;
import 'common/data_source/rest_datasource/dio_rest_datasource.dart' as _i14;
import 'common/data_source/rest_datasource/rest_datasource.dart' as _i13;
import 'domain/ports/card_transaction_repo.dart' as _i20;
import 'domain/ports/cash_transaction_repo.dart' as _i22;
import 'domain/ports/sales_person_repo.dart' as _i24;
import 'domain/ports/shop-sales_repo.dart' as _i28;
import 'domain/ports/shop_repo.dart' as _i26;
import 'domain/use_cases/add_salesperson.dart' as _i30;
import 'domain/use_cases/fetch_loans.dart' as _i31;
import 'domain/use_cases/fetch_new_shops.dart' as _i32;
import 'domain/use_cases/fetch_recently_sold.dart' as _i33;
import 'domain/use_cases/fetch_salespeople.dart' as _i34;
import 'domain/use_cases/fetch_salesperson_cards_with_shop.dart' as _i35;
import 'domain/use_cases/fetch_salesperson_cash_with_shop.dart' as _i36;
import 'domain/use_cases/fetch_salesperson_shops.dart' as _i37;
import 'domain/use_cases/fetch_salesperson_this_month_stats.dart' as _i38;
import 'domain/use_cases/fetch_salesperson_this_week_stats.dart' as _i39;
import 'domain/use_cases/fetch_salesperson_today_stats.dart' as _i40;
import 'domain/use_cases/fetch_total_this_month_stats.dart' as _i41;
import 'domain/use_cases/fetch_total_this_week_stats.dart' as _i42;
import 'domain/use_cases/fetch_total_today_stats.dart' as _i43;
import 'infrastructure/data_sources/card_transaction_data_source.dart' as _i18;
import 'infrastructure/data_sources/cash_transaction_data_source.dart' as _i19;
import 'infrastructure/data_sources/sales_person_data_source.dart' as _i15;
import 'infrastructure/data_sources/shop-sales_datasource.dart' as _i17;
import 'infrastructure/data_sources/shop_data_source.dart' as _i16;
import 'infrastructure/repo/card_transaction_repo_impl.dart' as _i21;
import 'infrastructure/repo/cash_transaction_repo_impl.dart' as _i23;
import 'infrastructure/repo/sales_person_repo_impl.dart' as _i25;
import 'infrastructure/repo/shop-sales_repo_impl.dart' as _i29;
import 'infrastructure/repo/shop_repo_impl.dart'
    as _i27; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.AddSalespersonBloc>(() => _i3.AddSalespersonBloc());
  gh.factory<_i4.CardTransactionsBloc>(() => _i4.CardTransactionsBloc());
  gh.factory<_i5.CashTransactionsBloc>(() => _i5.CashTransactionsBloc());
  gh.factory<_i6.FetchLoansBloc>(() => _i6.FetchLoansBloc());
  gh.factory<_i7.FetchNewShopsBloc>(() => _i7.FetchNewShopsBloc());
  gh.factory<_i8.FetchRecentlySoldBloc>(() => _i8.FetchRecentlySoldBloc());
  gh.factory<_i9.FetchSalespeopleBloc>(() => _i9.FetchSalespeopleBloc());
  gh.factory<_i10.FetchSalespersonShopsBloc>(
      () => _i10.FetchSalespersonShopsBloc());
  gh.factory<_i11.FetchSalespersonStatsBloc>(
      () => _i11.FetchSalespersonStatsBloc());
  gh.factory<_i12.FetchTotalStatsBloc>(() => _i12.FetchTotalStatsBloc());
  gh.lazySingleton<_i13.RestDataSource>(() => _i14.DioRestDataSource());
  gh.lazySingleton<_i15.SalesPersonCrudDataSource>(
      () => _i15.SalesPersonLoopbackDataSource(get<_i13.RestDataSource>()));
  gh.lazySingleton<_i16.ShopCrudDataSource>(
      () => _i16.ShopLoopbackDataSource(get<_i13.RestDataSource>()));
  gh.lazySingleton<_i17.ShopSalesCrudDataSource>(
      () => _i17.ShopSalesLoopbackDataSource(get<_i13.RestDataSource>()));
  gh.lazySingleton<_i18.CardTransactionCrudDataSource>(
      () => _i18.CardTransactionLoopbackDataSource(get<_i13.RestDataSource>()));
  gh.lazySingleton<_i19.CashTransactionCrudDataSource>(
      () => _i19.CashTransactionLoopbackDataSource(get<_i13.RestDataSource>()));
  gh.lazySingleton<_i20.ICardTransactionRepo>(() =>
      _i21.CardTransactionRepoImpl(get<_i18.CardTransactionCrudDataSource>()));
  gh.lazySingleton<_i22.ICashTransactionRepo>(() =>
      _i23.CashTransactionRepoImpl(get<_i19.CashTransactionCrudDataSource>()));
  gh.factory<_i24.ISalesPersonRepo>(
      () => _i25.SalesPersonRepoImpl(get<_i15.SalesPersonCrudDataSource>()));
  gh.lazySingleton<_i26.IShopRepo>(
      () => _i27.ShopRepoImpl(get<_i16.ShopCrudDataSource>()));
  gh.lazySingleton<_i28.IShopSalesRepo>(
      () => _i29.ShopSalesRepoImpl(get<_i17.ShopSalesCrudDataSource>()));
  gh.lazySingleton<_i30.AddSalesperson>(
      () => _i30.AddSalesperson(get<_i24.ISalesPersonRepo>()));
  gh.lazySingleton<_i31.FetchLoans>(
      () => _i31.FetchLoans(get<_i20.ICardTransactionRepo>()));
  gh.lazySingleton<_i32.FetchNewShops>(
      () => _i32.FetchNewShops(get<_i26.IShopRepo>()));
  gh.lazySingleton<_i33.FetchRecentlySold>(
      () => _i33.FetchRecentlySold(get<_i20.ICardTransactionRepo>()));
  gh.lazySingleton<_i34.FetchSalespeople>(
      () => _i34.FetchSalespeople(get<_i24.ISalesPersonRepo>()));
  gh.lazySingleton<_i35.FetchSalespersonCardsWithShop>(() =>
      _i35.FetchSalespersonCardsWithShop(get<_i20.ICardTransactionRepo>()));
  gh.lazySingleton<_i36.FetchSalespersonCashWithShop>(() =>
      _i36.FetchSalespersonCashWithShop(get<_i22.ICashTransactionRepo>()));
  gh.lazySingleton<_i37.FetchSalespersonShops>(
      () => _i37.FetchSalespersonShops(get<_i28.IShopSalesRepo>()));
  gh.lazySingleton<_i38.FetchSalespersonThisMonthCard>(() =>
      _i38.FetchSalespersonThisMonthCard(get<_i20.ICardTransactionRepo>()));
  gh.lazySingleton<_i38.FetchSalespersonThisMonthCash>(() =>
      _i38.FetchSalespersonThisMonthCash(get<_i22.ICashTransactionRepo>()));
  gh.lazySingleton<_i39.FetchSalespersonThisWeekCard>(() =>
      _i39.FetchSalespersonThisWeekCard(get<_i20.ICardTransactionRepo>()));
  gh.lazySingleton<_i39.FetchSalespersonThisWeekCash>(() =>
      _i39.FetchSalespersonThisWeekCash(get<_i22.ICashTransactionRepo>()));
  gh.lazySingleton<_i40.FetchSalespersonTodayCard>(
      () => _i40.FetchSalespersonTodayCard(get<_i20.ICardTransactionRepo>()));
  gh.lazySingleton<_i40.FetchSalespersonTodayCash>(
      () => _i40.FetchSalespersonTodayCash(get<_i22.ICashTransactionRepo>()));
  gh.lazySingleton<_i41.FetchTotalThisMonthCard>(
      () => _i41.FetchTotalThisMonthCard(get<_i20.ICardTransactionRepo>()));
  gh.lazySingleton<_i41.FetchTotalThisMonthCash>(
      () => _i41.FetchTotalThisMonthCash(get<_i22.ICashTransactionRepo>()));
  gh.lazySingleton<_i42.FetchTotalThisWeekCard>(
      () => _i42.FetchTotalThisWeekCard(get<_i20.ICardTransactionRepo>()));
  gh.lazySingleton<_i42.FetchTotalThisWeekCash>(
      () => _i42.FetchTotalThisWeekCash(get<_i22.ICashTransactionRepo>()));
  gh.lazySingleton<_i43.FetchTotalTodayCard>(
      () => _i43.FetchTotalTodayCard(get<_i20.ICardTransactionRepo>()));
  gh.lazySingleton<_i43.FetchTotalTodayCash>(
      () => _i43.FetchTotalTodayCash(get<_i22.ICashTransactionRepo>()));
  return get;
}
