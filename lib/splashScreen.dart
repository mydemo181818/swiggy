import 'package:flutter/material.dart';
import 'package:swiggy_app/BottomNavigationBar.dart';
import 'package:swiggy_app/login.dart';
import 'package:swiggy_app/prefmanager/prefmanager.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    getToken();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 200,
          height: 200,
          child: Image.asset(
            'Assets/dp.jpg',
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }

  Future<void> getToken() async {
    // Helper.pushReplacement(context, const Authentication());
    bool logincheck = await PrefManager.getIsLoggedIn();
    debugPrint(logincheck.toString());
    if (logincheck == true) {
      await Future.delayed(const Duration(seconds: 2));
      if (mounted) {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const BottomNavigationBarExample()));
      }
    } else {
      await Future.delayed(const Duration(seconds: 2));
      if (mounted) {}
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const HomePage3()));
    }
  }
}
