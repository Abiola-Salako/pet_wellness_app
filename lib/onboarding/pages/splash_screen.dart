 import 'package:flutter/material.dart';
import 'package:flutter_splash_screen/flutter_splash_screen.dart';
import 'package:pet_wellness_app/onboarding/pages/onboard_one.dart';

class SplashScreen extends StatefulWidget {
   const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    super.initState();
    hideScreen();
  }

  /// Hide your splash screen and navigate to HomePage
  Future<void> hideScreen() async {
    // Simulate a delay for demonstration purposes
    await Future.delayed(Duration(seconds: 5));

    // Hide the splash screen
    FlutterSplashScreen.hide();

    // Navigate to the HomePage
    // Navigator.of(context).pushReplacement(
    //   MaterialPageRoute(builder: (context) => OnboardingPage()),
    // );
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context){
          return OnboardScreenOne();
        })
    );
  }
   @override
   Widget build(BuildContext context) {
     return Container(
       decoration:BoxDecoration(
         color:Color(0xFFE2E6E9)
         ),

       child:Column(mainAxisAlignment: MainAxisAlignment.end,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
          // SizedBox(height: 60,),
           Image.asset("assets/images/dug_img.png",
           width:180,height: 280),
           //SizedBox(height: 8),
           Image.asset("assets/images/logo_img.png",
           width: 192,height: 77,),
           SizedBox(height: 150,)

         ],

     ),
     );

   }
}

