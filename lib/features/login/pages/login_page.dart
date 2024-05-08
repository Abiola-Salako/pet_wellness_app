//
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_wellness_app/features/home/pages/home_page.dart';
import 'package:pet_wellness_app/features/login/bloc/login_bloc.dart';
import 'package:pet_wellness_app/features/login/bloc/login_state.dart';
import 'package:pet_wellness_app/onboarding/pages/onboard_one.dart';
import 'package:pet_wellness_app/onboarding/pages/splash_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  static route()=> MaterialPageRoute(builder: (context) {
    return LoginPage();
  },);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailAddressController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    var bloc = context.watch<LoginBloc>();
    var state = bloc.state;
_emailAddressController.addListener(() {
  bloc.setEmailAddress(_emailAddressController.text);
});

    // dispatch setPassword event when user enters password
    _passwordController.addListener(() {
      bloc.setPassword(_passwordController.text);
      });

    switch(state.loginStatus){
      case LoginStatus.Initial:
        break;
      case LoginStatus.Processing:
        break;
      case LoginStatus.Successful:
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          Navigator.pushReplacement(
            context,

              HomePage.route(),
          );
          bloc.reset();
        });
        break;
      case LoginStatus.Error:
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          ScaffoldMessenger
              .of(context)
              .showSnackBar(SnackBar(content: Text("An error occured")));
          bloc.resetStatusToInitial();
        });
        break;
      case LoginStatus.InvalidEmailAddress:
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          ScaffoldMessenger
              .of(context)
              .showSnackBar(SnackBar(content: Text("You entered an invalid email address")));
          bloc.resetStatusToInitial();
        });

        break;
      case LoginStatus.InvalidPassword:
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          ScaffoldMessenger
              .of(context)
              .showSnackBar(SnackBar(content: Text("You entered an invalid password")));
          bloc.resetStatusToInitial();
        });
        break;
    }

    return Scaffold(
        body: ListView(
        children: [Container(
        padding: EdgeInsets.only(top: 80, left:18, right: 18),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(
    "WELCOME TO PETCODEX",
    style: TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: Theme
    .of(context)
        .primaryColor,
    ),
    ),
    SizedBox(height: 14.0),
    Text(
    "Email",
    style: TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: Theme
        .of(context)
        .primaryColor
    ),
    ),
    TextField(
        controller: _emailAddressController,
    decoration: InputDecoration(
    border: OutlineInputBorder(
    borderSide:BorderSide(color: Theme
        .of(context)
        .primaryColor, width: 1.0)
    ),
    fillColor: Colors.grey.withOpacity(0.2),
    filled: true,
    labelText: "Email",
    labelStyle:TextStyle(
    color: Colors.black38,
    fontSize: 12,
    ),
    ),
    keyboardType: TextInputType.emailAddress

    ),
    SizedBox(height: 14.0),
    Text(
    "Password",
    style: TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: Theme
        .of(context)
        .primaryColor
    ),
    ),
    TextField(
      controller: _passwordController,
      obscureText:true,
    decoration: InputDecoration(
    border: OutlineInputBorder(
    borderSide:BorderSide(color: Theme
        .of(context)
        .primaryColor, width: 1.0)
    ),
    fillColor: Colors.grey.withOpacity(0.2),
    filled: true,
    labelText: "********",

    labelStyle:TextStyle(
    color: Colors.black38,
    fontSize: 12,
    ),
    ),
    keyboardType: TextInputType.text,
    ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 120,
                child: TextButton(onPressed: () {},
                  child: Text(
                    "Forgot Password?",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        fontSize: 12,
                        color: Theme
                            .of(context)
                            .primaryColor
                    ),
                  ),
                ),
              ),
            ],
          ),
      SizedBox(height: 14.0),
      Center(
        child: SizedBox(
          height: 40,
          width: 100,
          child: ElevatedButton(
            onPressed: (){
              bloc.onSubmit();

            },
            style: ElevatedButton.styleFrom(
              backgroundColor:Theme
                  .of(context)
                  .primaryColor,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.0)
              ),
            ),
            child: Text("Log In",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ),
      SizedBox(height: 24,),
      Center(
        child: SizedBox(
          height: 40,
          width: 350,
          child: ElevatedButton(
            onPressed: (){

            },
            style: ElevatedButton.styleFrom(
              backgroundColor:Theme
                  .of(context)
                  .primaryColor,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.0)
              ),
            ),
            child: Text("Google",
              style: TextStyle(
                decoration: TextDecoration.underline,
                decorationColor: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 14,),
            ),
          ),
        ),
      ),
      SizedBox(height: 24,),
      Center(
        child: SizedBox(
          height: 40,
          width: 350,
          child: ElevatedButton(
            onPressed: (){

            },
            style: ElevatedButton.styleFrom(
              backgroundColor:Theme
                  .of(context)
                  .primaryColor,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.0)
              ),
            ),
            child: Text("Apple",
              style: TextStyle(
                decoration: TextDecoration.underline,
                decorationColor: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 14,),
            ),
          ),
        ),
      ),
      SizedBox(height: 24,),
      Center(
        child: SizedBox(
          height: 40,
          width: 350,
          child: ElevatedButton(
            onPressed: (){

            },
            style: ElevatedButton.styleFrom(
              backgroundColor:Theme
                  .of(context)
                  .primaryColor,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.0)
              ),
            ),
            child: Text("Facebook",
              style: TextStyle(
                decoration: TextDecoration.underline,
                decorationColor: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 14,),
            ),
          ),
        ),
      ),

    ],
    ),
        ),
        ],
        ),
    );
  }
}




















