import 'package:admin_app/common/data_source/cache_datasource/cache_datasource.dart';
import 'package:admin_app/common/data_source/cache_datasource/shared_preferences_cache_datasource.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../injection.dart';

@lazySingleton
class UserCacheDataSource extends SharedPreferencesCacheDataSource {
  final CacheDataSource cacheDataSource;

  UserCacheDataSource(this.cacheDataSource)
      : super(getIt.get<SharedPreferences>());
}
