import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swiggy_app/model/profilemodel.dart';
// ignore: unused_import
import 'package:swiggy_app/model/signinmodel.dart';
import 'package:swiggy_app/repopsitory/repository.dart';

class ProfileBloc extends Bloc<ProfileEvents, ProfileStates> {
  ProfileBloc() : super(ProfileInitial()) {
    on<GetProfile>(getProfile);
  }

  Future<FutureOr<void>> getProfile(
      GetProfile event, Emitter<ProfileStates> emit) async {
    // SigninModel signinModel;
    emit(ProfileFetching());

    ProfileModel profileModel;

    profileModel = await Repository().Data(url: '/user/profile');

    if (profileModel.status == true) {
      //await PrefManager.setIsLoggedIn(true);
      emit(ProfileSuccess(profileModel: profileModel));
    } else {
      emit(ProfileError(error: "invalid user"));
    }
  }

  //else if (profileModel.status == false) {
  //emit(ProfileError(error: "Invalid credentials"));
  //}
  // if (event.phoneNo == "njan" && event.password == "njan") {
  //   emit(ProfileSuccess());
  //   await PrefManager.setIsLoggedIn(true);
  // }
  // // else if (event.phoneNo == '') {
  // //   emit(ProfileError(error: "invalid user"));
  // // }
  // else {
  //   emit(ProfileError(error: "Invalid credentials"));
  // }

  // if (event.phoneNo == "abc" && event.password == "123") {
  //   emit(ProfileSuccess());
  // } else {
  //   emit(ProfileError(error: "Invalid credentials"));
  // }
}

class ProfileEvents {}

class GetProfile extends ProfileEvents {
  final String? phoneNo, password;

  GetProfile({this.phoneNo, this.password});
}

class ProfileStates {}

class ProfileInitial extends ProfileStates {}

class ProfileFetching extends ProfileStates {}

class ProfileSuccess extends ProfileStates {
  final ProfileModel? profileModel;

  ProfileSuccess({this.profileModel});
}

class ProfileError extends ProfileStates {
  final String? error;

  ProfileError({this.error});
}
