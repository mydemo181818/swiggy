// ignore_for_file: unused_import

import 'package:connectivity/connectivity.dart';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:swiggy_app/model/commonmodel.dart';
import 'package:swiggy_app/model/profilemodel.dart';
import 'package:swiggy_app/model/registrationmodel.dart';
import 'package:swiggy_app/model/signinmodel.dart';
import 'package:swiggy_app/webclient.dart';

////22222
class Repository {
  Future<SigninModel> checkPhoneNumber(
      {required String url, dynamic data}) async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      Fluttertoast.showToast(
        msg: "No internet connection",
        gravity: ToastGravity.CENTER,
      );
    }
    final dynamic response = await WebClient.post(url, data);
    final SigninModel userModel = SigninModel.fromJson(response);
    return userModel;
  }

  Future<Registrationmodel> signup({required String url, dynamic data}) async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      Fluttertoast.showToast(
        msg: "No internet connection",
        gravity: ToastGravity.CENTER,
      );
    }
    final dynamic response = await WebClient.post(url, data);
    final Registrationmodel userModel = Registrationmodel.fromJson(response);
    return userModel;
  }

  Future<ProfileModel> Data({required String url, dynamic data}) async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      Fluttertoast.showToast(
        msg: "No internet connection",
        gravity: ToastGravity.CENTER,
      );
    }
    final dynamic response = await WebClient.get(url);
    final ProfileModel userModel = ProfileModel.fromJson(response);
    return userModel;
  }
}
