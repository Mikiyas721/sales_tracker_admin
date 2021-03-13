// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i20;

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
import 'application/login/login_bloc.dart' as _i15;
import 'application/splash/splash_bloc.dart' as _i23;
import 'common/data_source/cache_datasource/cache_datasource.dart' as _i25;
import 'common/data_source/cache_datasource/shared_preferences_cache_datasource.dart'
    as _i26;
import 'common/data_source/rest_datasource/dio_rest_datasource.dart' as _i18;
import 'common/data_source/rest_datasource/rest_datasource.dart' as _i17;
import 'domain/ports/card_transaction_repo.dart' as _i29;
import 'domain/ports/cash_transaction_repo.dart' as _i31;
import 'domain/ports/firebase_repo.dart' as _i13;
import 'domain/ports/sales_person_repo.dart' as _i33;
import 'domain/ports/shop-sales_repo.dart' as _i37;
import 'domain/ports/shop_repo.dart' as _i35;
import 'domain/ports/user_repo.dart' as _i56;
import 'domain/use_cases/add_salesperson.dart' as _i41;
import 'domain/use_cases/clear_loggedin_user.dart' as _i60;
import 'domain/use_cases/fetch_loans.dart' as _i42;
import 'domain/use_cases/fetch_new_shops.dart' as _i43;
import 'domain/use_cases/fetch_recently_sold.dart' as _i44;
import 'domain/use_cases/fetch_sales_person.dart' as _i45;
import 'domain/use_cases/fetch_salespeople.dart' as _i46;
import 'domain/use_cases/fetch_salesperson_cards_with_shop.dart' as _i47;
import 'domain/use_cases/fetch_salesperson_cash_with_shop.dart' as _i48;
import 'domain/use_cases/fetch_salesperson_shops.dart' as _i49;
import 'domain/use_cases/fetch_salesperson_this_month_stats.dart' as _i50;
import 'domain/use_cases/fetch_salesperson_this_week_stats.dart' as _i51;
import 'domain/use_cases/fetch_salesperson_today_stats.dart' as _i52;
import 'domain/use_cases/fetch_total_this_month_stats.dart' as _i53;
import 'domain/use_cases/fetch_total_this_week_stats.dart' as _i54;
import 'domain/use_cases/fetch_total_today_stats.dart' as _i55;
import 'domain/use_cases/load_logged_in_user.dart' as _i58;
import 'domain/use_cases/login_into_api.dart' as _i39;
import 'domain/use_cases/request_firebase_verification_code.dart' as _i16;
import 'domain/use_cases/save_user.dart' as _i59;
import 'domain/use_cases/verify_firebase_code.dart' as _i24;
import 'infrastructure/data_sources/card_transaction_data_source.dart' as _i27;
import 'infrastructure/data_sources/cash_transaction_data_source.dart' as _i28;
import 'infrastructure/data_sources/sales_person_data_source.dart' as _i19;
import 'infrastructure/data_sources/shop-sales_datasource.dart' as _i22;
import 'infrastructure/data_sources/shop_data_source.dart' as _i21;
import 'infrastructure/data_sources/user_cache_datasource.dart' as _i40;
import 'infrastructure/repos/card_transaction_repo_impl.dart' as _i30;
import 'infrastructure/repos/cash_transaction_repo_impl.dart' as _i32;
import 'infrastructure/repos/firebase_repo_impl.dart' as _i14;
import 'infrastructure/repos/sales_person_repo_impl.dart' as _i34;
import 'infrastructure/repos/shop-sales_repo_impl.dart' as _i38;
import 'infrastructure/repos/shop_repo_impl.dart' as _i36;
import 'infrastructure/repos/user_repo_impl.dart' as _i57;
import 'injection.dart' as _i61; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
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
  gh.lazySingleton<_i13.IFirebaseRepo>(() => _i14.FirebaseRepoImpl());
  gh.factory<_i15.LoginBloc>(() => _i15.LoginBloc());
  gh.lazySingleton<_i16.RequestFirebaseVerificationCode>(
      () => _i16.RequestFirebaseVerificationCode(get<_i13.IFirebaseRepo>()));
  gh.lazySingleton<_i17.RestDataSource>(() => _i18.DioRestDataSource());
  gh.lazySingleton<_i19.SalesPersonCrudDataSource>(
      () => _i19.SalesPersonLoopbackDataSource(get<_i17.RestDataSource>()));
  await gh.factoryAsync<_i20.SharedPreferences>(() => registerModule.prefs,
      preResolve: true);
  gh.lazySingleton<_i21.ShopCrudDataSource>(
      () => _i21.ShopLoopbackDataSource(get<_i17.RestDataSource>()));
  gh.lazySingleton<_i22.ShopSalesCrudDataSource>(
      () => _i22.ShopSalesLoopbackDataSource(get<_i17.RestDataSource>()));
  gh.lazySingleton<_i23.SplashBloc>(() => _i23.SplashBloc());
  gh.lazySingleton<_i24.VerifyFirebaseCode>(
      () => _i24.VerifyFirebaseCode(get<_i13.IFirebaseRepo>()));
  gh.lazySingleton<_i25.CacheDataSource>(() =>
      _i26.SharedPreferencesCacheDataSource(get<_i20.SharedPreferences>()));
  gh.lazySingleton<_i27.CardTransactionCrudDataSource>(
      () => _i27.CardTransactionLoopbackDataSource(get<_i17.RestDataSource>()));
  gh.lazySingleton<_i28.CashTransactionCrudDataSource>(
      () => _i28.CashTransactionLoopbackDataSource(get<_i17.RestDataSource>()));
  gh.lazySingleton<_i29.ICardTransactionRepo>(() =>
      _i30.CardTransactionRepoImpl(get<_i27.CardTransactionCrudDataSource>()));
  gh.lazySingleton<_i31.ICashTransactionRepo>(() =>
      _i32.CashTransactionRepoImpl(get<_i28.CashTransactionCrudDataSource>()));
  gh.factory<_i33.ISalesPersonRepo>(
      () => _i34.SalesPersonRepoImpl(get<_i19.SalesPersonCrudDataSource>()));
  gh.lazySingleton<_i35.IShopRepo>(
      () => _i36.ShopRepoImpl(get<_i21.ShopCrudDataSource>()));
  gh.lazySingleton<_i37.IShopSalesRepo>(
      () => _i38.ShopSalesRepoImpl(get<_i22.ShopSalesCrudDataSource>()));
  gh.lazySingleton<_i39.LoginIntoApi>(
      () => _i39.LoginIntoApi(get<_i33.ISalesPersonRepo>()));
  gh.lazySingleton<_i40.UserCacheDataSource>(
      () => _i40.UserCacheDataSource(get<_i25.CacheDataSource>()));
  gh.lazySingleton<_i41.AddSalesperson>(
      () => _i41.AddSalesperson(get<_i33.ISalesPersonRepo>()));
  gh.lazySingleton<_i42.FetchLoans>(
      () => _i42.FetchLoans(get<_i29.ICardTransactionRepo>()));
  gh.lazySingleton<_i43.FetchNewShops>(
      () => _i43.FetchNewShops(get<_i35.IShopRepo>()));
  gh.lazySingleton<_i44.FetchRecentlySold>(
      () => _i44.FetchRecentlySold(get<_i29.ICardTransactionRepo>()));
  gh.lazySingleton<_i45.FetchSalesPerson>(
      () => _i45.FetchSalesPerson(get<_i33.ISalesPersonRepo>()));
  gh.lazySingleton<_i46.FetchSalespeople>(
      () => _i46.FetchSalespeople(get<_i33.ISalesPersonRepo>()));
  gh.lazySingleton<_i47.FetchSalespersonCardsWithShop>(() =>
      _i47.FetchSalespersonCardsWithShop(get<_i29.ICardTransactionRepo>()));
  gh.lazySingleton<_i48.FetchSalespersonCashWithShop>(() =>
      _i48.FetchSalespersonCashWithShop(get<_i31.ICashTransactionRepo>()));
  gh.lazySingleton<_i49.FetchSalespersonShops>(
      () => _i49.FetchSalespersonShops(get<_i37.IShopSalesRepo>()));
  gh.lazySingleton<_i50.FetchSalespersonThisMonthCard>(() =>
      _i50.FetchSalespersonThisMonthCard(get<_i29.ICardTransactionRepo>()));
  gh.lazySingleton<_i50.FetchSalespersonThisMonthCash>(() =>
      _i50.FetchSalespersonThisMonthCash(get<_i31.ICashTransactionRepo>()));
  gh.lazySingleton<_i51.FetchSalespersonThisWeekCard>(() =>
      _i51.FetchSalespersonThisWeekCard(get<_i29.ICardTransactionRepo>()));
  gh.lazySingleton<_i51.FetchSalespersonThisWeekCash>(() =>
      _i51.FetchSalespersonThisWeekCash(get<_i31.ICashTransactionRepo>()));
  gh.lazySingleton<_i52.FetchSalespersonTodayCard>(
      () => _i52.FetchSalespersonTodayCard(get<_i29.ICardTransactionRepo>()));
  gh.lazySingleton<_i52.FetchSalespersonTodayCash>(
      () => _i52.FetchSalespersonTodayCash(get<_i31.ICashTransactionRepo>()));
  gh.lazySingleton<_i53.FetchTotalThisMonthCard>(
      () => _i53.FetchTotalThisMonthCard(get<_i29.ICardTransactionRepo>()));
  gh.lazySingleton<_i53.FetchTotalThisMonthCash>(
      () => _i53.FetchTotalThisMonthCash(get<_i31.ICashTransactionRepo>()));
  gh.lazySingleton<_i54.FetchTotalThisWeekCard>(
      () => _i54.FetchTotalThisWeekCard(get<_i29.ICardTransactionRepo>()));
  gh.lazySingleton<_i54.FetchTotalThisWeekCash>(
      () => _i54.FetchTotalThisWeekCash(get<_i31.ICashTransactionRepo>()));
  gh.lazySingleton<_i55.FetchTotalTodayCard>(
      () => _i55.FetchTotalTodayCard(get<_i29.ICardTransactionRepo>()));
  gh.lazySingleton<_i55.FetchTotalTodayCash>(
      () => _i55.FetchTotalTodayCash(get<_i31.ICashTransactionRepo>()));
  gh.lazySingleton<_i56.IUserRepo>(
      () => _i57.UserRepo(get<_i40.UserCacheDataSource>()));
  gh.lazySingleton<_i58.LoadLoggedInUser>(
      () => _i58.LoadLoggedInUser(get<_i56.IUserRepo>()));
  gh.lazySingleton<_i59.SaveUser>(() => _i59.SaveUser(get<_i56.IUserRepo>()));
  gh.lazySingleton<_i60.ClearLoggedInUser>(
      () => _i60.ClearLoggedInUser(get<_i56.IUserRepo>()));
  return get;
}

class _$RegisterModule extends _i61.RegisterModule {}
