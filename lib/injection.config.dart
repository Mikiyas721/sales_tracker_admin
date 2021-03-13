// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i24;

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
import 'application/login/login_bloc.dart' as _i18;
import 'application/splash/splash_bloc.dart' as _i27;
import 'common/data_source/cache_datasource/cache_datasource.dart' as _i29;
import 'common/data_source/cache_datasource/shared_preferences_cache_datasource.dart'
    as _i30;
import 'common/data_source/rest_datasource/dio_rest_datasource.dart' as _i22;
import 'common/data_source/rest_datasource/rest_datasource.dart' as _i21;
import 'domain/ports/admin_repo.dart' as _i13;
import 'domain/ports/card_transaction_repo.dart' as _i34;
import 'domain/ports/cash_transaction_repo.dart' as _i36;
import 'domain/ports/firebase_repo.dart' as _i16;
import 'domain/ports/sales_person_repo.dart' as _i38;
import 'domain/ports/shop-sales_repo.dart' as _i42;
import 'domain/ports/shop_repo.dart' as _i40;
import 'domain/ports/user_repo.dart' as _i59;
import 'domain/use_cases/add_salesperson.dart' as _i45;
import 'domain/use_cases/clear_loggedin_user.dart' as _i63;
import 'domain/use_cases/fetch_admin.dart' as _i33;
import 'domain/use_cases/fetch_loans.dart' as _i46;
import 'domain/use_cases/fetch_new_shops.dart' as _i47;
import 'domain/use_cases/fetch_recently_sold.dart' as _i48;
import 'domain/use_cases/fetch_salespeople.dart' as _i49;
import 'domain/use_cases/fetch_salesperson_cards_with_shop.dart' as _i50;
import 'domain/use_cases/fetch_salesperson_cash_with_shop.dart' as _i51;
import 'domain/use_cases/fetch_salesperson_shops.dart' as _i52;
import 'domain/use_cases/fetch_salesperson_this_month_stats.dart' as _i53;
import 'domain/use_cases/fetch_salesperson_this_week_stats.dart' as _i54;
import 'domain/use_cases/fetch_salesperson_today_stats.dart' as _i55;
import 'domain/use_cases/fetch_total_this_month_stats.dart' as _i56;
import 'domain/use_cases/fetch_total_this_week_stats.dart' as _i57;
import 'domain/use_cases/fetch_total_today_stats.dart' as _i58;
import 'domain/use_cases/load_logged_in_user.dart' as _i61;
import 'domain/use_cases/login_into_api.dart' as _i19;
import 'domain/use_cases/request_firebase_verification_code.dart' as _i20;
import 'domain/use_cases/save_user.dart' as _i62;
import 'domain/use_cases/verify_firebase_code.dart' as _i28;
import 'infrastructure/data_sources/admin_datasource.dart' as _i15;
import 'infrastructure/data_sources/card_transaction_data_source.dart' as _i31;
import 'infrastructure/data_sources/cash_transaction_data_source.dart' as _i32;
import 'infrastructure/data_sources/sales_person_data_source.dart' as _i23;
import 'infrastructure/data_sources/shop-sales_datasource.dart' as _i26;
import 'infrastructure/data_sources/shop_data_source.dart' as _i25;
import 'infrastructure/data_sources/user_cache_datasource.dart' as _i44;
import 'infrastructure/repos/admin_repo_impl.dart' as _i14;
import 'infrastructure/repos/card_transaction_repo_impl.dart' as _i35;
import 'infrastructure/repos/cash_transaction_repo_impl.dart' as _i37;
import 'infrastructure/repos/firebase_repo_impl.dart' as _i17;
import 'infrastructure/repos/sales_person_repo_impl.dart' as _i39;
import 'infrastructure/repos/shop-sales_repo_impl.dart' as _i43;
import 'infrastructure/repos/shop_repo_impl.dart' as _i41;
import 'infrastructure/repos/user_repo_impl.dart' as _i60;
import 'injection.dart' as _i64; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i13.IAdminRepo>(
      () => _i14.AdminRepoImpl(get<_i15.AdminCrudDataSource>()));
  gh.lazySingleton<_i16.IFirebaseRepo>(() => _i17.FirebaseRepoImpl());
  gh.factory<_i18.LoginBloc>(() => _i18.LoginBloc());
  gh.lazySingleton<_i19.LoginIntoApi>(
      () => _i19.LoginIntoApi(get<_i13.IAdminRepo>()));
  gh.lazySingleton<_i20.RequestFirebaseVerificationCode>(
      () => _i20.RequestFirebaseVerificationCode(get<_i16.IFirebaseRepo>()));
  gh.lazySingleton<_i21.RestDataSource>(() => _i22.DioRestDataSource());
  gh.lazySingleton<_i23.SalesPersonCrudDataSource>(
      () => _i23.SalesPersonLoopbackDataSource(get<_i21.RestDataSource>()));
  await gh.factoryAsync<_i24.SharedPreferences>(() => registerModule.prefs,
      preResolve: true);
  gh.lazySingleton<_i25.ShopCrudDataSource>(
      () => _i25.ShopLoopbackDataSource(get<_i21.RestDataSource>()));
  gh.lazySingleton<_i26.ShopSalesCrudDataSource>(
      () => _i26.ShopSalesLoopbackDataSource(get<_i21.RestDataSource>()));
  gh.lazySingleton<_i27.SplashBloc>(() => _i27.SplashBloc());
  gh.lazySingleton<_i28.VerifyFirebaseCode>(
      () => _i28.VerifyFirebaseCode(get<_i16.IFirebaseRepo>()));
  gh.lazySingleton<_i29.CacheDataSource>(() =>
      _i30.SharedPreferencesCacheDataSource(get<_i24.SharedPreferences>()));
  gh.lazySingleton<_i31.CardTransactionCrudDataSource>(
      () => _i31.CardTransactionLoopbackDataSource(get<_i21.RestDataSource>()));
  gh.lazySingleton<_i32.CashTransactionCrudDataSource>(
      () => _i32.CashTransactionLoopbackDataSource(get<_i21.RestDataSource>()));
  gh.lazySingleton<_i33.FetchAdmin>(
      () => _i33.FetchAdmin(get<_i13.IAdminRepo>()));
  gh.lazySingleton<_i34.ICardTransactionRepo>(() =>
      _i35.CardTransactionRepoImpl(get<_i31.CardTransactionCrudDataSource>()));
  gh.lazySingleton<_i36.ICashTransactionRepo>(() =>
      _i37.CashTransactionRepoImpl(get<_i32.CashTransactionCrudDataSource>()));
  gh.factory<_i38.ISalesPersonRepo>(
      () => _i39.SalesPersonRepoImpl(get<_i23.SalesPersonCrudDataSource>()));
  gh.lazySingleton<_i40.IShopRepo>(
      () => _i41.ShopRepoImpl(get<_i25.ShopCrudDataSource>()));
  gh.lazySingleton<_i42.IShopSalesRepo>(
      () => _i43.ShopSalesRepoImpl(get<_i26.ShopSalesCrudDataSource>()));
  gh.lazySingleton<_i44.UserCacheDataSource>(
      () => _i44.UserCacheDataSource(get<_i29.CacheDataSource>()));
  gh.lazySingleton<_i45.AddSalesperson>(
      () => _i45.AddSalesperson(get<_i38.ISalesPersonRepo>()));
  gh.lazySingleton<_i46.FetchLoans>(
      () => _i46.FetchLoans(get<_i34.ICardTransactionRepo>()));
  gh.lazySingleton<_i47.FetchNewShops>(
      () => _i47.FetchNewShops(get<_i40.IShopRepo>()));
  gh.lazySingleton<_i48.FetchRecentlySold>(
      () => _i48.FetchRecentlySold(get<_i34.ICardTransactionRepo>()));
  gh.lazySingleton<_i49.FetchSalespeople>(
      () => _i49.FetchSalespeople(get<_i38.ISalesPersonRepo>()));
  gh.lazySingleton<_i50.FetchSalespersonCardsWithShop>(() =>
      _i50.FetchSalespersonCardsWithShop(get<_i34.ICardTransactionRepo>()));
  gh.lazySingleton<_i51.FetchSalespersonCashWithShop>(() =>
      _i51.FetchSalespersonCashWithShop(get<_i36.ICashTransactionRepo>()));
  gh.lazySingleton<_i52.FetchSalespersonShops>(
      () => _i52.FetchSalespersonShops(get<_i42.IShopSalesRepo>()));
  gh.lazySingleton<_i53.FetchSalespersonThisMonthCard>(() =>
      _i53.FetchSalespersonThisMonthCard(get<_i34.ICardTransactionRepo>()));
  gh.lazySingleton<_i53.FetchSalespersonThisMonthCash>(() =>
      _i53.FetchSalespersonThisMonthCash(get<_i36.ICashTransactionRepo>()));
  gh.lazySingleton<_i54.FetchSalespersonThisWeekCard>(() =>
      _i54.FetchSalespersonThisWeekCard(get<_i34.ICardTransactionRepo>()));
  gh.lazySingleton<_i54.FetchSalespersonThisWeekCash>(() =>
      _i54.FetchSalespersonThisWeekCash(get<_i36.ICashTransactionRepo>()));
  gh.lazySingleton<_i55.FetchSalespersonTodayCard>(
      () => _i55.FetchSalespersonTodayCard(get<_i34.ICardTransactionRepo>()));
  gh.lazySingleton<_i55.FetchSalespersonTodayCash>(
      () => _i55.FetchSalespersonTodayCash(get<_i36.ICashTransactionRepo>()));
  gh.lazySingleton<_i56.FetchTotalThisMonthCard>(
      () => _i56.FetchTotalThisMonthCard(get<_i34.ICardTransactionRepo>()));
  gh.lazySingleton<_i56.FetchTotalThisMonthCash>(
      () => _i56.FetchTotalThisMonthCash(get<_i36.ICashTransactionRepo>()));
  gh.lazySingleton<_i57.FetchTotalThisWeekCard>(
      () => _i57.FetchTotalThisWeekCard(get<_i34.ICardTransactionRepo>()));
  gh.lazySingleton<_i57.FetchTotalThisWeekCash>(
      () => _i57.FetchTotalThisWeekCash(get<_i36.ICashTransactionRepo>()));
  gh.lazySingleton<_i58.FetchTotalTodayCard>(
      () => _i58.FetchTotalTodayCard(get<_i34.ICardTransactionRepo>()));
  gh.lazySingleton<_i58.FetchTotalTodayCash>(
      () => _i58.FetchTotalTodayCash(get<_i36.ICashTransactionRepo>()));
  gh.lazySingleton<_i59.IUserRepo>(
      () => _i60.UserRepo(get<_i44.UserCacheDataSource>()));
  gh.lazySingleton<_i61.LoadLoggedInUser>(
      () => _i61.LoadLoggedInUser(get<_i59.IUserRepo>()));
  gh.lazySingleton<_i62.SaveUser>(() => _i62.SaveUser(get<_i59.IUserRepo>()));
  gh.lazySingleton<_i63.ClearLoggedInUser>(
      () => _i63.ClearLoggedInUser(get<_i59.IUserRepo>()));
  return get;
}

class _$RegisterModule extends _i64.RegisterModule {}
