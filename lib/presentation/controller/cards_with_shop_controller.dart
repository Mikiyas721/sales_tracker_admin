import 'package:admin_app/application/fetch_cards/card_transactions_bloc.dart';
import 'package:admin_app/common/controller/controller.dart';
import 'package:admin_app/common/mixins/date_time_mixin.dart';
import 'package:admin_app/common/mixins/toast_mixin.dart';
import 'package:admin_app/domain/use_cases/fetch_salesperson_cards_with_shop.dart';
import 'package:admin_app/injection.dart';
import 'package:admin_app/presentation/models/card_transaction_view_model.dart';
import 'package:flutter/cupertino.dart';

class CardsWithShopController extends BlocViewModelController<
    CardTransactionsBloc,
    CardTransactionsEvent,
    CardTransactionsState,
    CardTransactionsViewModel> with DateTimeMixin, ToastMixin {
  final BuildContext context;
  final String salespersonId;
  final String shopId;

  CardsWithShopController(this.context, this.salespersonId, this.shopId)
      : super(getIt.get<CardTransactionsBloc>(), true);

  @override
  CardTransactionsViewModel mapStateToViewModel(CardTransactionsState s) {
    return CardTransactionsViewModel(
        cards: s.cards
            .map<CardTransactionViewModel>((e) => CardTransactionViewModel(
                  time: mapTimeToMeridian(e.createdAt),
                  date: getShortDateString(e.createdAt),
                  amount: e.amount.value.toString(),
                ))
            .toList(),
        isLoading: s.isLoading,
        errorMessage: s.fetchingSalesFailure.getOrElse(() => null)?.message);
  }

  void loadCards() async {
    bloc.add(FetchingCardsEvent());
    final result = await getIt
        .get<FetchSalespersonCardsWithShop>()
        .execute(salespersonId, shopId);
    result.fold((l) {
      bloc.add(FetchingCardsFailedEvent(l));
    }, (r) {
      bloc.add(FetchingCardsSucceededEvent(r));
    });
  }
}
