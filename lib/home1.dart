import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({super.key});

  @override
  State<HomePage1> createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  bool isDarkMode = false;
  final TextEditingController usernamecontroller = TextEditingController();
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black : Colors.red,
      appBar: AppBar(
        backgroundColor: isDarkMode ? Colors.grey[900] : Colors.black,
        title: const Text("Welcome Flutter"),
        actions: const [
          Icon(Icons.logout),
          CircleAvatar(backgroundColor: Colors.green)
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                width: 220,
                height: 220,
                color: Colors.green,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(),
                          CircleAvatar(),
                          CircleAvatar()
                        ],
                      ),
                    ),
                    CircleAvatar(),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: usernamecontroller,
                  decoration: const InputDecoration(hintText: "Name"),
                ),
              ),
            ),
            MaterialButton(
              color: Colors.green,
              onPressed: () {
                if (usernamecontroller.text.isEmpty) {
                  Fluttertoast.showToast(msg: "Please enter your name");
                } else {
                  Fluttertoast.showToast(msg: "Success");
                }
                setState(() {
                  isDarkMode = !isDarkMode; // Toggle the dark mode state
                });
              },
              child: const Text("Sign up"),
            )
          ],
        ),
      ),
    );
  }
}
