import 'package:admin_app/domain/use_cases/fetch_new_shops.dart';
import 'package:admin_app/injection.dart';
import 'package:admin_app/presentation/models/new_shops_view_model.dart';
import 'package:flutter/cupertino.dart';
import '../../common/controller/controller.dart';
import '../../application/fetch_new_shops/fetch_new_shops_bloc.dart';

class NewShopsController extends BlocViewModelController<FetchNewShopsBloc,
    FetchNewShopsEvent,
    FetchNewShopsState,
    NewShopsViewModel> {
  final BuildContext context;

  NewShopsController(this.context)
      : super(getIt.get<FetchNewShopsBloc>(), true);

  @override
  NewShopsViewModel mapStateToViewModel(FetchNewShopsState s) {
    return NewShopsViewModel(
        newShops: s.shops.map((e) =>
            NewShopViewModel(
                name: e.name.value,
                phoneNumber: e.phoneNumber.value,
                address: e.address.value)).toList());
  }

  void loadNewShops() async {
    bloc.add(FetchingNewShopsEvent());
    final result = await getIt.get<FetchNewShops>().execute();
    result.fold((l) {
      bloc.add(FetchingNewShopsFailedEvent(l));
    }, (r) {
      bloc.add(FetchingNewShopsSucceededEvent(r));
    });
  }
}
