// ignore_for_file: unused_import
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:swiggy_app/BottomNavigationBar.dart';
import 'package:swiggy_app/bloc/signinbloc.dart';
import 'package:swiggy_app/registration.dart';

class HomePage3 extends StatefulWidget {
  const HomePage3({super.key});

  @override
  State<HomePage3> createState() => _HomePage3State();
}

class _HomePage3State extends State<HomePage3> {
  final TextEditingController usernamecontroller = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 251, 152, 77),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 251, 152, 77),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              width: 370,
              height: 500,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 94, 0),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.circle_notifications_rounded,
                        color: Colors.white,
                        size: 40,
                      ),
                      SizedBox(width: 15),
                      Text(
                        "Swiggy App",
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  const Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        width: 330,
                        height: 50,
                        child: TextFormField(
                          controller: usernamecontroller,
                          decoration: const InputDecoration(
                              hintText: "Name",
                              contentPadding: EdgeInsets.all(10)),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        width: 330,
                        height: 50,
                        child: TextFormField(
                          controller: passwordController,
                          decoration: const InputDecoration(
                              hintText: "Password",
                              contentPadding: EdgeInsets.all(10)),
                          obscureText: true,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 8.0, right: 200),
                        child: Text(
                          "Forgor Password ?",
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      MaterialButton(
                          color: const Color.fromARGB(255, 255, 234, 0),
                          onPressed: () {
                            BlocProvider.of<LoginBloc>(context).add(
                                VerifyPassword(
                                    phoneNo: usernamecontroller.text.toString(),
                                    password:
                                        passwordController.text.toString()));
                          },
                          child: BlocConsumer<LoginBloc, LoginStates>(
                              builder: (state, context) {
                            if (state is Loading) {
                              return const CircularProgressIndicator();
                            }
                            return const Text("Login");
                          }, listener: (context, state) {
                            if (state is LoginSuccess) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const BottomNavigationBarExample()));
                            } else if (state is LoginError) {
                              Fluttertoast.showToast(
                                  msg: "Wrong pass or username");
                            }

                            // else {
                            //   Fluttertoast.showToast(msg: "Wrong ");
                            // }
                          })),
                      const SizedBox(
                        width: 20,
                      ),
                      MaterialButton(
                        color: const Color.fromARGB(255, 255, 234, 0),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage4()));
                        },
                        child: const Text("Sign Up"),
                      )
                    ],
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
