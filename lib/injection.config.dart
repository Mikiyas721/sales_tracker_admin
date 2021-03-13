// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i21;

import 'application/add_admin/add_admin_bloc.dart' as _i3;
import 'application/add_salesperson/add_salesperson_bloc.dart' as _i4;
import 'application/fetch_cards/card_transactions_bloc.dart' as _i5;
import 'application/fetch_cash/cash_transactions_bloc.dart' as _i6;
import 'application/fetch_loans/fetch_loans_bloc.dart' as _i7;
import 'application/fetch_new_shops/fetch_new_shops_bloc.dart' as _i8;
import 'application/fetch_recently_sold/fetch_recently_sold_bloc.dart' as _i9;
import 'application/fetch_salespeople/fetch_salespeople_bloc.dart' as _i10;
import 'application/fetch_salesperson_shop/fetch_salesperson_shop_bloc.dart'
    as _i11;
import 'application/fetch_salesperson_stats/fetch_salesperson_stats_bloc.dart'
    as _i12;
import 'application/fetch_total_stats/fetch_total_stats_bloc.dart' as _i13;
import 'application/login/login_bloc.dart' as _i16;
import 'application/splash/splash_bloc.dart' as _i24;
import 'common/data_source/cache_datasource/cache_datasource.dart' as _i27;
import 'common/data_source/cache_datasource/shared_preferences_cache_datasource.dart'
    as _i28;
import 'common/data_source/rest_datasource/dio_rest_datasource.dart' as _i19;
import 'common/data_source/rest_datasource/rest_datasource.dart' as _i18;
import 'domain/ports/admin_repo.dart' as _i31;
import 'domain/ports/card_transaction_repo.dart' as _i33;
import 'domain/ports/cash_transaction_repo.dart' as _i35;
import 'domain/ports/firebase_repo.dart' as _i14;
import 'domain/ports/sales_person_repo.dart' as _i37;
import 'domain/ports/shop-sales_repo.dart' as _i41;
import 'domain/ports/shop_repo.dart' as _i39;
import 'domain/ports/user_repo.dart' as _i61;
import 'domain/use_cases/add_admin.dart' as _i45;
import 'domain/use_cases/add_salesperson.dart' as _i46;
import 'domain/use_cases/clear_loggedin_user.dart' as _i65;
import 'domain/use_cases/fetch_admin.dart' as _i47;
import 'domain/use_cases/fetch_loans.dart' as _i48;
import 'domain/use_cases/fetch_new_shops.dart' as _i49;
import 'domain/use_cases/fetch_recently_sold.dart' as _i50;
import 'domain/use_cases/fetch_salespeople.dart' as _i51;
import 'domain/use_cases/fetch_salesperson_cards_with_shop.dart' as _i52;
import 'domain/use_cases/fetch_salesperson_cash_with_shop.dart' as _i53;
import 'domain/use_cases/fetch_salesperson_shops.dart' as _i54;
import 'domain/use_cases/fetch_salesperson_this_month_stats.dart' as _i55;
import 'domain/use_cases/fetch_salesperson_this_week_stats.dart' as _i56;
import 'domain/use_cases/fetch_salesperson_today_stats.dart' as _i57;
import 'domain/use_cases/fetch_total_this_month_stats.dart' as _i58;
import 'domain/use_cases/fetch_total_this_week_stats.dart' as _i59;
import 'domain/use_cases/fetch_total_today_stats.dart' as _i60;
import 'domain/use_cases/load_logged_in_user.dart' as _i63;
import 'domain/use_cases/login_into_api.dart' as _i43;
import 'domain/use_cases/request_firebase_verification_code.dart' as _i17;
import 'domain/use_cases/save_user.dart' as _i64;
import 'domain/use_cases/verify_firebase_code.dart' as _i25;
import 'infrastructure/data_sources/admin_datasource.dart' as _i26;
import 'infrastructure/data_sources/card_transaction_data_source.dart' as _i29;
import 'infrastructure/data_sources/cash_transaction_data_source.dart' as _i30;
import 'infrastructure/data_sources/sales_person_data_source.dart' as _i20;
import 'infrastructure/data_sources/shop-sales_datasource.dart' as _i23;
import 'infrastructure/data_sources/shop_data_source.dart' as _i22;
import 'infrastructure/data_sources/user_cache_datasource.dart' as _i44;
import 'infrastructure/repos/admin_repo_impl.dart' as _i32;
import 'infrastructure/repos/card_transaction_repo_impl.dart' as _i34;
import 'infrastructure/repos/cash_transaction_repo_impl.dart' as _i36;
import 'infrastructure/repos/firebase_repo_impl.dart' as _i15;
import 'infrastructure/repos/sales_person_repo_impl.dart' as _i38;
import 'infrastructure/repos/shop-sales_repo_impl.dart' as _i42;
import 'infrastructure/repos/shop_repo_impl.dart' as _i40;
import 'infrastructure/repos/user_repo_impl.dart' as _i62;
import 'injection.dart' as _i66; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.AddAdminBloc>(() => _i3.AddAdminBloc());
  gh.factory<_i4.AddSalespersonBloc>(() => _i4.AddSalespersonBloc());
  gh.factory<_i5.CardTransactionsBloc>(() => _i5.CardTransactionsBloc());
  gh.factory<_i6.CashTransactionsBloc>(() => _i6.CashTransactionsBloc());
  gh.factory<_i7.FetchLoansBloc>(() => _i7.FetchLoansBloc());
  gh.factory<_i8.FetchNewShopsBloc>(() => _i8.FetchNewShopsBloc());
  gh.factory<_i9.FetchRecentlySoldBloc>(() => _i9.FetchRecentlySoldBloc());
  gh.factory<_i10.FetchSalespeopleBloc>(() => _i10.FetchSalespeopleBloc());
  gh.factory<_i11.FetchSalespersonShopsBloc>(
      () => _i11.FetchSalespersonShopsBloc());
  gh.factory<_i12.FetchSalespersonStatsBloc>(
      () => _i12.FetchSalespersonStatsBloc());
  gh.factory<_i13.FetchTotalStatsBloc>(() => _i13.FetchTotalStatsBloc());
  gh.lazySingleton<_i14.IFirebaseRepo>(() => _i15.FirebaseRepoImpl());
  gh.factory<_i16.LoginBloc>(() => _i16.LoginBloc());
  gh.lazySingleton<_i17.RequestFirebaseVerificationCode>(
      () => _i17.RequestFirebaseVerificationCode(get<_i14.IFirebaseRepo>()));
  gh.lazySingleton<_i18.RestDataSource>(() => _i19.DioRestDataSource());
  gh.lazySingleton<_i20.SalesPersonCrudDataSource>(
      () => _i20.SalesPersonLoopbackDataSource(get<_i18.RestDataSource>()));
  await gh.factoryAsync<_i21.SharedPreferences>(() => registerModule.prefs,
      preResolve: true);
  gh.lazySingleton<_i22.ShopCrudDataSource>(
      () => _i22.ShopLoopbackDataSource(get<_i18.RestDataSource>()));
  gh.lazySingleton<_i23.ShopSalesCrudDataSource>(
      () => _i23.ShopSalesLoopbackDataSource(get<_i18.RestDataSource>()));
  gh.lazySingleton<_i24.SplashBloc>(() => _i24.SplashBloc());
  gh.lazySingleton<_i25.VerifyFirebaseCode>(
      () => _i25.VerifyFirebaseCode(get<_i14.IFirebaseRepo>()));
  gh.lazySingleton<_i26.AdminCrudDataSource>(
      () => _i26.AdminLoopbackDataSource(get<_i18.RestDataSource>()));
  gh.lazySingleton<_i27.CacheDataSource>(() =>
      _i28.SharedPreferencesCacheDataSource(get<_i21.SharedPreferences>()));
  gh.lazySingleton<_i29.CardTransactionCrudDataSource>(
      () => _i29.CardTransactionLoopbackDataSource(get<_i18.RestDataSource>()));
  gh.lazySingleton<_i30.CashTransactionCrudDataSource>(
      () => _i30.CashTransactionLoopbackDataSource(get<_i18.RestDataSource>()));
  gh.lazySingleton<_i31.IAdminRepo>(
      () => _i32.AdminRepoImpl(get<_i26.AdminCrudDataSource>()));
  gh.lazySingleton<_i33.ICardTransactionRepo>(() =>
      _i34.CardTransactionRepoImpl(get<_i29.CardTransactionCrudDataSource>()));
  gh.lazySingleton<_i35.ICashTransactionRepo>(() =>
      _i36.CashTransactionRepoImpl(get<_i30.CashTransactionCrudDataSource>()));
  gh.factory<_i37.ISalesPersonRepo>(
      () => _i38.SalesPersonRepoImpl(get<_i20.SalesPersonCrudDataSource>()));
  gh.lazySingleton<_i39.IShopRepo>(
      () => _i40.ShopRepoImpl(get<_i22.ShopCrudDataSource>()));
  gh.lazySingleton<_i41.IShopSalesRepo>(
      () => _i42.ShopSalesRepoImpl(get<_i23.ShopSalesCrudDataSource>()));
  gh.lazySingleton<_i43.LoginIntoApi>(
      () => _i43.LoginIntoApi(get<_i31.IAdminRepo>()));
  gh.lazySingleton<_i44.UserCacheDataSource>(
      () => _i44.UserCacheDataSource(get<_i27.CacheDataSource>()));
  gh.lazySingleton<_i45.AddAdmin>(() => _i45.AddAdmin(get<_i31.IAdminRepo>()));
  gh.lazySingleton<_i46.AddSalesperson>(
      () => _i46.AddSalesperson(get<_i37.ISalesPersonRepo>()));
  gh.lazySingleton<_i47.FetchAdmin>(
      () => _i47.FetchAdmin(get<_i31.IAdminRepo>()));
  gh.lazySingleton<_i48.FetchLoans>(
      () => _i48.FetchLoans(get<_i33.ICardTransactionRepo>()));
  gh.lazySingleton<_i49.FetchNewShops>(
      () => _i49.FetchNewShops(get<_i39.IShopRepo>()));
  gh.lazySingleton<_i50.FetchRecentlySold>(
      () => _i50.FetchRecentlySold(get<_i33.ICardTransactionRepo>()));
  gh.lazySingleton<_i51.FetchSalespeople>(
      () => _i51.FetchSalespeople(get<_i37.ISalesPersonRepo>()));
  gh.lazySingleton<_i52.FetchSalespersonCardsWithShop>(() =>
      _i52.FetchSalespersonCardsWithShop(get<_i33.ICardTransactionRepo>()));
  gh.lazySingleton<_i53.FetchSalespersonCashWithShop>(() =>
      _i53.FetchSalespersonCashWithShop(get<_i35.ICashTransactionRepo>()));
  gh.lazySingleton<_i54.FetchSalespersonShops>(
      () => _i54.FetchSalespersonShops(get<_i41.IShopSalesRepo>()));
  gh.lazySingleton<_i55.FetchSalespersonThisMonthCard>(() =>
      _i55.FetchSalespersonThisMonthCard(get<_i33.ICardTransactionRepo>()));
  gh.lazySingleton<_i55.FetchSalespersonThisMonthCash>(() =>
      _i55.FetchSalespersonThisMonthCash(get<_i35.ICashTransactionRepo>()));
  gh.lazySingleton<_i56.FetchSalespersonThisWeekCard>(() =>
      _i56.FetchSalespersonThisWeekCard(get<_i33.ICardTransactionRepo>()));
  gh.lazySingleton<_i56.FetchSalespersonThisWeekCash>(() =>
      _i56.FetchSalespersonThisWeekCash(get<_i35.ICashTransactionRepo>()));
  gh.lazySingleton<_i57.FetchSalespersonTodayCard>(
      () => _i57.FetchSalespersonTodayCard(get<_i33.ICardTransactionRepo>()));
  gh.lazySingleton<_i57.FetchSalespersonTodayCash>(
      () => _i57.FetchSalespersonTodayCash(get<_i35.ICashTransactionRepo>()));
  gh.lazySingleton<_i58.FetchTotalThisMonthCard>(
      () => _i58.FetchTotalThisMonthCard(get<_i33.ICardTransactionRepo>()));
  gh.lazySingleton<_i58.FetchTotalThisMonthCash>(
      () => _i58.FetchTotalThisMonthCash(get<_i35.ICashTransactionRepo>()));
  gh.lazySingleton<_i59.FetchTotalThisWeekCard>(
      () => _i59.FetchTotalThisWeekCard(get<_i33.ICardTransactionRepo>()));
  gh.lazySingleton<_i59.FetchTotalThisWeekCash>(
      () => _i59.FetchTotalThisWeekCash(get<_i35.ICashTransactionRepo>()));
  gh.lazySingleton<_i60.FetchTotalTodayCard>(
      () => _i60.FetchTotalTodayCard(get<_i33.ICardTransactionRepo>()));
  gh.lazySingleton<_i60.FetchTotalTodayCash>(
      () => _i60.FetchTotalTodayCash(get<_i35.ICashTransactionRepo>()));
  gh.lazySingleton<_i61.IUserRepo>(
      () => _i62.UserRepo(get<_i44.UserCacheDataSource>()));
  gh.lazySingleton<_i63.LoadLoggedInUser>(
      () => _i63.LoadLoggedInUser(get<_i61.IUserRepo>()));
  gh.lazySingleton<_i64.SaveUser>(() => _i64.SaveUser(get<_i61.IUserRepo>()));
  gh.lazySingleton<_i65.ClearLoggedInUser>(
      () => _i65.ClearLoggedInUser(get<_i61.IUserRepo>()));
  return get;
}

class _$RegisterModule extends _i66.RegisterModule {}
