
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hidayah/features/ui/home/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const String name="/";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nextScreen();
  }

  Future<void> nextScreen()async{
 await   Future.delayed(Duration(seconds: 3));
    Get.toNamed(HomeScreen.name);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(

          children: [
            SizedBox(),
            Spacer(),
            Image.asset("assets/images/logo.jpg",height: 200,
            width: 200,
            fit: BoxFit.fill,
            ),
            Spacer(),
            SizedBox(),
          ],
        ),
      ),
    );
  }
}
