import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: unused_import
import 'package:swiggy_app/model/signinmodel.dart';
import 'package:swiggy_app/prefmanager/prefmanager.dart';
import 'package:swiggy_app/repopsitory/repository.dart';

class LoginBloc extends Bloc<LoginEvents, LoginStates> {
  LoginBloc() : super(LoginInitial()) {
    on<VerifyPassword>(verifyPassword);
  }

  Future<FutureOr<void>> verifyPassword(
      VerifyPassword event, Emitter<LoginStates> emit) async {
    // SigninModel signinModel;
    emit(Loading());
    // await Future.delayed(const Duration(seconds: 2));
    SigninModel signModel;

    Map map = {"phoneNo": event.phoneNo, "password": event.password};
    signModel =
        await Repository().checkPhoneNumber(url: '/user/login', data: map);
    print(map);

    if (signModel.status == true) {
      await PrefManager.setToken(signModel.token);
      //await PrefManager.setIsLoggedIn(true);
      emit(LoginSuccess());
    } else if (signModel.status == false) {
      emit(LoginError(error: "Invalid credentials"));
    }
    // if (event.phoneNo == "njan" && event.password == "njan") {
    //   emit(LoginSuccess());
    //   await PrefManager.setIsLoggedIn(true);
    // }
    // // else if (event.phoneNo == '') {
    // //   emit(LoginError(error: "invalid user"));
    // // }
    // else {
    //   emit(LoginError(error: "Invalid credentials"));
    // }
  }

  // if (event.phoneNo == "abc" && event.password == "123") {
  //   emit(LoginSuccess());
  // } else {
  //   emit(LoginError(error: "Invalid credentials"));
  // }
}

class LoginEvents {}

class VerifyPassword extends LoginEvents {
  final String? phoneNo, password;

  VerifyPassword({this.phoneNo, this.password});
}

class LoginStates {}

class LoginInitial extends LoginStates {}

class Loading extends LoginStates {}

class LoginSuccess extends LoginStates {}

class LoginError extends LoginStates {
  final String? error;

  LoginError({this.error});
}
