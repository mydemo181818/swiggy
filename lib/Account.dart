import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:swiggy_app/bloc/profilebloc.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => AccountPageState();
}

class AccountPageState extends State<AccountPage> {
  @override
  void initState() {
    BlocProvider.of<ProfileBloc>(context).add(GetProfile());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocConsumer<ProfileBloc, ProfileStates>(builder: (context, state) {
              if (state is ProfileFetching) {
                return const CircularProgressIndicator();
              } else if (state is ProfileSuccess) {
                return Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          height: 200,
                          width: 400,
                          color: const Color.fromARGB(255, 175, 76, 76),
                        ),
                        Text("${state.profileModel!.data!.phoneNo}"),
                        Text("${state.profileModel!.data!.password}")
                      ],
                    ),
                  ),
                );
              }
              return const Text(
                "Sign in",
                style: TextStyle(color: Colors.white),
              );
            }, listener: (context, state) {
              if (state is ProfileSuccess) {
                // Navigator.pushReplacement(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) =>
                //             const BottomNavigationBarExampleApp()));
              } else {
                Fluttertoast.showToast(msg: "Invalid Usernameeeee ");
                print("erroe");
              }
            }),
          ],
        ),
      ),
    );
    // body: BlocConsumer<ProfileBloc, ProfileStates>(builder: (state, context) {
    //   if (state is ProfileFetching) {
    //     return const CircularProgressIndicator();
    //   } else if (state is ProfileSuccess) {
    //     return const Column(
    //       children: [Text("jkdbvnkA")],
    //     );
    //   }
    //   return const Text("LOGIN");
    // }, listener: (context, state) {
    //   if (state is ProfileSuccess) {
    //     // Navigator.push(
    //     //     context,
    //     //     MaterialPageRoute(
    //     //         builder: (context) =>
    //     //             const BottomNavigationBarExample()));
    //   }

    //   // if else {
    //   //   Fluttertoast.showToast(msg: "Wrong pass or username");
    //   // }
    // }),
  }
}
