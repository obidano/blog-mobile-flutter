

import 'package:blog_mobile/pages/login/loginState.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginCtrl extends StateNotifier<LoginState>{

  LoginCtrl():super(LoginState()){
    // init

  }

  Future<void> soumettreFormulaire() async{
    state =state.copyWith(isLoading: true);
    await Future.delayed(Duration(seconds: 3));
    state=state.copyWith(isLoading: false);
  }

}

final loginCtrlProvider=StateNotifierProvider<LoginCtrl,LoginState>((ref) {
  ref.keepAlive();
  return LoginCtrl();
});