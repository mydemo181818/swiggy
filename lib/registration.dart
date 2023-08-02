// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:swiggy_app/bloc/signupbloc.dart';
import 'package:swiggy_app/login.dart';

class HomePage4 extends StatefulWidget {
  const HomePage4({Key? key}) : super(key: key);

  @override
  _HomePage4State createState() => _HomePage4State();
}

class _HomePage4State extends State<HomePage4> {
  String dropdownvalue = 'Delhi';

  // List of items in our dropdown menu
  var items = [
    'Delhi',
    'Karnataka',
    'Tamil Nadu',
    'Kerala ',
    'Gujarat',
  ];
  String dropdownvalue1 = 'Kannur';
  var items1 = [
    'Kannur',
    'Kollam',
    'Pathanamthitta',
    'Alappuzha',
    'Kottayam',
    'Idukki',
    'Ernakulam',
    'Thrissur',
    'Palakkad',
    'Thiruvananthapuram',
    'Malappuram',
    'Kozhikode',
    'Wayanad',
    'Kasaragod'
  ];

  final TextEditingController ownernamecontroller = TextEditingController();
  final TextEditingController phonenocontroller = TextEditingController();
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController gendercontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final TextEditingController addresscontroller = TextEditingController();
  final TextEditingController nationalitycontroller = TextEditingController();
  final TextEditingController statecontroller = TextEditingController();
  final TextEditingController districtcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 251, 152, 77),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 251, 152, 77),
        elevation: 0,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  width: 350,
                  height: 980,
                  color: const Color.fromARGB(255, 255, 111, 0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "Sign Up",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Kindly fill this form to register",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(120, 255, 255, 255),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 240, bottom: 10),
                          child: Text("Owner name"),
                        ),
                        Container(
                          color: Colors.white,
                          width: 330,
                          height: 50,
                          child: TextFormField(
                            controller: ownernamecontroller,
                            decoration: const InputDecoration(
                              hintText: "Enter Owner Name",
                              contentPadding: EdgeInsets.all(10),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 240, bottom: 10),
                          child: Text("Phone number"),
                        ),
                        Container(
                          color: Colors.white,
                          width: 330,
                          height: 50,
                          child: TextFormField(
                            controller: phonenocontroller,
                            decoration: const InputDecoration(
                              hintText: "Enter phone Number",
                              contentPadding: EdgeInsets.all(10),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 250, bottom: 10),
                          child: Text("Email"),
                        ),
                        Container(
                          color: Colors.white,
                          width: 330,
                          height: 50,
                          child: TextFormField(
                            controller: emailcontroller,
                            decoration: const InputDecoration(
                              hintText: "Enter email",
                              contentPadding: EdgeInsets.all(10),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 240, bottom: 10),
                          child: Text("Gender"),
                        ),
                        Container(
                          color: Colors.white,
                          width: 330,
                          height: 50,
                          child: TextFormField(
                            controller: gendercontroller,
                            decoration: const InputDecoration(
                              hintText: "Enter Gender",
                              contentPadding: EdgeInsets.all(10),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 255, bottom: 10),
                          child: Text("Password"),
                        ),
                        Container(
                          color: Colors.white,
                          width: 330,
                          height: 50,
                          child: TextFormField(
                            controller: passwordcontroller,
                            decoration: const InputDecoration(
                              hintText: "Password",
                              contentPadding: EdgeInsets.all(10),
                            ),
                            obscureText: true,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 240, bottom: 10),
                          child: Text("Address"),
                        ),
                        Container(
                          color: Colors.white,
                          width: 330,
                          height: 50,
                          child: TextFormField(
                            controller: addresscontroller,
                            decoration: const InputDecoration(
                              hintText: "Enter Address",
                              contentPadding: EdgeInsets.all(10),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 240, bottom: 10),
                          child: Text("Nationality"),
                        ),
                        Container(
                          color: Colors.white,
                          width: 330,
                          height: 50,
                          child: TextFormField(
                            controller: nationalitycontroller,
                            decoration: const InputDecoration(
                              hintText: "Enter Nationality",
                              contentPadding: EdgeInsets.all(10),
                            ),
                          ),
                        ),
                        /****************   state ************** */
                        const Padding(
                          padding: EdgeInsets.only(right: 240, bottom: 10),
                          child: Text("State Name"),
                        ),
                        Container(
                            color: Colors.white,
                            width: 330,
                            height: 50,
                            child: Row(
                              children: [
                                Expanded(
                                    flex: 2,
                                    child: TextFormField(
                                      controller: statecontroller,
                                      decoration: const InputDecoration(
                                        hintText: "Enter State Name",
                                        contentPadding: EdgeInsets.all(5),
                                      ),
                                    )),
                                const SizedBox(width: 0),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 0),
                                    child: DropdownButton(
                                      isExpanded: true,
                                      value: dropdownvalue,
                                      icon:
                                          const Icon(Icons.keyboard_arrow_down),
                                      items: items.map((String item) {
                                        return DropdownMenuItem(
                                          value: item,
                                          child: Text(item),
                                        );
                                      }).toList(),
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          dropdownvalue = newValue!;
                                          statecontroller.text = dropdownvalue;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                        /************* district  *********** */
                        const Padding(
                          padding: EdgeInsets.only(right: 235, bottom: 10),
                          child: Text("Enter District"),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        // Define the selectedItem variable

                        Container(
                          color: Colors.white,
                          width: 330,
                          height: 50,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: TextFormField(
                                  controller: districtcontroller,
                                  decoration: const InputDecoration(
                                    hintText: "Enter District Name",
                                    contentPadding: EdgeInsets.all(5),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 0),
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 0),
                                  child: DropdownButton(
                                    isExpanded: true,
                                    // Initial Value
                                    value: dropdownvalue1,

                                    // Down Arrow Icon
                                    icon: const Icon(Icons.keyboard_arrow_down),

                                    // Array list of items
                                    items: items1.map((String item) {
                                      return DropdownMenuItem(
                                        value: item,
                                        child: Text(item),
                                      );
                                    }).toList(),

                                    // After selecting the desired option, it will
                                    // change the button value to the selected value
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        dropdownvalue1 = newValue!;
                                        districtcontroller.text =
                                            dropdownvalue1;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(
                          height: 10,
                        ),
                        // const Padding(
                        //   padding: EdgeInsets.only(right: 255, bottom: 10),
                        //   child: Text("Password"),
                        // ),
                        // Container(
                        //   color: Colors.white,
                        //   width: 330,
                        //   height: 50,
                        //   child: TextFormField(
                        //     controller: passwordController,
                        //     decoration: const InputDecoration(
                        //       hintText: "Password",
                        //       contentPadding: EdgeInsets.all(10),
                        //     ),
                        //     obscureText: true,
                        //   ),
                        // ),
                        MaterialButton(
                            color: const Color.fromARGB(255, 255, 234, 0),
                            onPressed: () {
                              if (ownernamecontroller.text.isEmpty) {
                                Fluttertoast.showToast(msg: "enter name");
                              } else if (phonenocontroller.text.isEmpty) {
                                Fluttertoast.showToast(
                                    msg: "enter phonenumber");
                              } else if (emailcontroller.text.isEmpty) {
                                Fluttertoast.showToast(msg: "enter email");
                              } else if (gendercontroller.text.isEmpty) {
                                Fluttertoast.showToast(msg: "enter username");
                              } else if (passwordcontroller.text.isEmpty) {
                                Fluttertoast.showToast(msg: "enter password");
                              } else if (addresscontroller.text.isEmpty) {
                                Fluttertoast.showToast(
                                    msg: "enter Restaurant Name");
                              } else if (nationalitycontroller.text.isEmpty) {
                                Fluttertoast.showToast(msg: "enter Owner Name");
                              } else if (statecontroller.text.isEmpty) {
                                Fluttertoast.showToast(msg: "enter password");
                              } else {
                                BlocProvider.of<SignupBloc>(context)
                                    .add(VerifyDistrict(
                                  name: ownernamecontroller.text.toString(),
                                  phoneNo: phonenocontroller.text.toString(),
                                  email: emailcontroller.text.toString(),
                                  gender: gendercontroller.text.toString(),
                                  password: passwordcontroller.text.toString(),
                                  adress: addresscontroller.text.toString(),
                                  nationality:
                                      nationalitycontroller.text.toString(),
                                  state: statecontroller.text.toString(),
                                  district: districtcontroller.text.toString(),
                                ));
                              }
                            },
                            child: BlocConsumer<SignupBloc, SignupStates>(
                                builder: (state, context) {
                              if (state is Loading) {
                                return const CircularProgressIndicator();
                              }
                              return const Text("Signup");
                            }, listener: (context, state) {
                              if (state is SignupSuccess) {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const HomePage3()));
                              } else if (state is SignupError) {
                                Fluttertoast.showToast(
                                    msg: "Wrong pass or username");
                              }
                              // else {
                              //   Fluttertoast.showToast(msg: "Wrong ");
                              // }
                            })),
                      ],
                    ),
                  ),
                ),
              ),
              // MaterialButton(
              //     color: const Color.fromARGB(255, 255, 234, 0),
              //     onPressed: () {
              //       BlocProvider.of<SignupBloc>(context).add(VerifyDistrict(
              //           name: districtController.text.toString(),
              //           district: districtController.text.toString(),
              //           password: passwordController.text.toString()));
              //     },
              //     child: BlocConsumer<SignupBloc, SignupStates>(
              //         builder: (state, context) {
              //       if (state is Loading) {
              //         return const CircularProgressIndicator();
              //       }
              //       return const Text("Signup");
              //     }, listener: (context, state) {
              //       if (state is SignupSuccess) {
              //         Navigator.push(
              //             context,
              //             MaterialPageRoute(
              //                 builder: (context) => const HomePage3()));
              //       } else if (state is SignupError) {
              //         Fluttertoast.showToast(msg: "Wrong pass or username");
              //       }
              //       // else {
              //       //   Fluttertoast.showToast(msg: "Wrong ");
              //       // }
              //     })),
            ],
          ),
        ),
      ),
    );
  }
}
