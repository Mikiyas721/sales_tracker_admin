import 'dart:async';
import 'package:flutter/cupertino.dart';
import '../../common/controller/controller.dart';
import '../../domain/use_cases/load_logged_in_user.dart';
import '../../injection.dart';
import '../../application/splash/splash_bloc.dart';

class SplashController extends BlocController<SplashBloc, SplashEvent, SplashState> {
  final BuildContext context;

  SplashController(this.context) : super(getIt.get<SplashBloc>(), false);

  loadUser() async {
    final result = await getIt.get<LoadLoggedInUser>().execute();
    await Future.delayed(Duration(seconds: 1));
    result.fold(() {
      Navigator.pushReplacementNamed(context, '/loginPage');
    }, (a) {
      bloc.add(UserChangedSplashEvent(result));
    });
  }

  @override
  onStateChanged(SplashState previousState, SplashState currentState) {
    if (previousState.user.isNone() && currentState.user.isSome()) {
      Navigator.pushNamedAndRemoveUntil(context, '/homePage', (a) => false);
    }
    else if(previousState.user.isSome() && currentState.user.isNone()){
      Navigator.pushNamedAndRemoveUntil(context, '/login', (a) => false);
    }
  }
}
