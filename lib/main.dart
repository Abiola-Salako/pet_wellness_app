import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_wellness_app/features/Vet/pages/find_vet_view.dart';
import 'package:pet_wellness_app/features/home/pages/home_page.dart';
import 'package:pet_wellness_app/features/home/pages/home_view.dart';
import 'package:pet_wellness_app/features/login/bloc/login_bloc.dart';
import 'package:pet_wellness_app/features/login/pages/login_page.dart';
import 'package:pet_wellness_app/features/services/pages/our_services.dart';
import 'package:pet_wellness_app/features/signup/bloc/signup_bloc.dart';
import 'package:pet_wellness_app/features/signup/pages/sign_up_page.dart';
import 'package:pet_wellness_app/onboarding/pages/onboard_one.dart';
import 'package:pet_wellness_app/onboarding/pages/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


void main() async {
  runApp(const MyApp());
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
    designSize: const Size (430,932),
    );
    return MultiBlocProvider (
      providers: [
        BlocProvider(
            create: (context)=>SignupBloc()
        ),
        BlocProvider(
            create: (context)=>LoginBloc()
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        home: SplashScreen(),
      ),
    );
  }
}



