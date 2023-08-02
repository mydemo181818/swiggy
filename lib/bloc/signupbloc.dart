import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swiggy_app/model/registrationmodel.dart';
import 'package:swiggy_app/repopsitory/repository.dart';
// ignore: unused_import

class SignupBloc extends Bloc<SignupEvents, SignupStates> {
  SignupBloc() : super(SignupInitial()) {
    on<VerifyDistrict>(verifyDistrict);
  }

  Future<FutureOr<void>> verifyDistrict(
      VerifyDistrict event, Emitter<SignupStates> emit) async {
    emit(Loading());
    // await Future.delayed(const Duration(seconds: 2));

    Registrationmodel registrationmodel;

    Map map = {
      "name": event.name,
      "phoneNo": event.phoneNo,
      "email": event.email,
      "gender": event.gender,
      "password": event.password,
      "adress": event.adress,
      "nationality": event.nationality,
      "state": event.state,
      "district": event.district,
    };

    registrationmodel =
        await Repository().signup(url: '/user/register', data: map);
    print(map);
    if (registrationmodel.status == true) {
      emit(SignupSuccess());
    } else {
      emit(SignupError(error: "invalid user"));
    }
    // if (event.district == "Kottayam" && event.password == "njan") {
    //   emit(SignupSuccess());
    // }
    // // else if (event.name == '') {
    // //   emit(SignupError(error: "invalid user"));
    // // }
    // else {
    //   emit(SignupError(error: "Invalid credentials"));
    // }
  }

  // if (event.name == "abc" && event.password == "123") {
  //   emit(SignupSuccess());
  // } else {
  //   emit(SignupError(error: "Invalid credentials"));
  // }
}

class SignupEvents {}

class VerifyDistrict extends SignupEvents {
  final String? name,
      phoneNo,
      email,
      gender,
      password,
      adress,
      nationality,
      state,
      district;

  VerifyDistrict(
      {this.name,
      this.phoneNo,
      this.email,
      this.gender,
      this.password,
      this.adress,
      this.nationality,
      this.state,
      this.district});
}

class SignupStates {}

class SignupInitial extends SignupStates {}

class Loading extends SignupStates {}

class SignupSuccess extends SignupStates {}

class SignupError extends SignupStates {
  final String? error;

  SignupError({this.error});
}
