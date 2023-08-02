// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swiggy_app/bloc/profilebloc.dart';

import 'package:swiggy_app/bloc/signinbloc.dart';
import 'package:swiggy_app/bloc/signupbloc.dart';
import 'package:swiggy_app/home.dart';
import 'package:swiggy_app/login.dart';

import 'package:swiggy_app/registration.dart';
import 'package:swiggy_app/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginBloc>(create: (BuildContext context) => LoginBloc()),
        BlocProvider<SignupBloc>(
            create: (BuildContext context) => SignupBloc()),
        BlocProvider<ProfileBloc>(
            create: (BuildContext context) => ProfileBloc()),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Zwiggy',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const SplashScreen()),
    );
  }
}
