

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_wellness_app/features/home/pages/home_page.dart';
import 'package:pet_wellness_app/features/home/pages/home_view.dart';
import 'package:pet_wellness_app/features/login/pages/login_page.dart';
import 'package:pet_wellness_app/features/signup/bloc/signup_bloc.dart';
import 'package:pet_wellness_app/features/signup/bloc/signup_state.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({super.key});

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {

  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailAddressController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();




  @override
  Widget build(BuildContext context) {
    SignupBloc bloc = context.watch<SignupBloc>();
    SignupState state = bloc.state;

    switch(state.signupStatus){
      case SignupStatus.Initial:
        break;
      case SignupStatus.Processing:
      // TODO: Handle this case.
        break;
      case SignupStatus.Successful:
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          Navigator.pushReplacement(
            context,
            HomePage.route(),
          );
          bloc.reset();
        });
        break;
      case SignupStatus.Error:
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          ScaffoldMessenger
              .of(context)
              .showSnackBar(SnackBar(content: Text("An error occured")));
        });
        break;
    }
      return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(top: 80, left: 18, right: 18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "WELCOME TO PETCODEX",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Theme
                        .of(context)
                        .primaryColor,
                  ),
                ),
                SizedBox(height: 14.0),
                Text(
                  "Name",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Theme
                          .of(context)
                          .primaryColor
                  ),
                ),
                TextField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Theme
                            .of(context)
                            .primaryColor, width: 1.0)
                    ),
                    fillColor: Colors.grey.withOpacity(0.2),
                    filled: true,
                    labelText: "Name",
                    labelStyle: TextStyle(
                      color: Colors.black38,
                      fontSize: 12,
                    ),
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
                          borderSide: BorderSide(color: Theme
                              .of(context)
                              .primaryColor, width: 1.0)
                      ),
                      fillColor: Colors.grey.withOpacity(0.2),
                      filled: true,
                      labelText: "Email",
                      labelStyle: TextStyle(
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
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Theme
                            .of(context)
                            .primaryColor, width: 1.0)
                    ),
                    fillColor: Colors.grey.withOpacity(0.2),
                    filled: true,
                    labelText: "********",
                    labelStyle: TextStyle(
                      color: Colors.black38,
                      fontSize: 12,
                    ),
                  ),
                  keyboardType: TextInputType.text,
                ),
                SizedBox(height: 14.0),
                Text(
                  "Location",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Theme
                          .of(context)
                          .primaryColor
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Theme
                            .of(context)
                            .primaryColor, width: 1.0)
                    ),
                    fillColor: Colors.grey.withOpacity(0.2),
                    filled: true,
                    labelText: "Ibadan",
                    labelStyle: TextStyle(
                      color: Colors.black38,
                      fontSize: 12,
                    ),
                  ),
                ),
                SizedBox(height: 14.0),
                Center(
                  child: SizedBox(
                    height: 40,
                    width: 150,
                    child: ElevatedButton(
                      onPressed: () {
                        if(_isUserInputValid()){

                          bloc.registerUser(
                            name: _nameController.text,
                            emailAddress:_emailAddressController.text,
                            password: _passwordController.text,
                          );

                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme
                            .of(context)
                            .primaryColor,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0)
                        ),
                      ),
                      child: Text("Create Account",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Have an account?",
                      style: TextStyle(
                        color: Theme
                            .of(context)
                            .primaryColor,
                      ),
                    ),
                    TextButton(onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return LoginPage();
                          })
                      );
                    },
                      child: Text("Log in",
                        style: TextStyle(
                          color: Colors.lightBlue,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                Center(
                  child: SizedBox(
                    height: 40,
                    width: 350,
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(builder: (context){
                        //       return RegisterPage();
                        //     })
                        // );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme
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
                SizedBox(height: 8.0),
                Center(
                  child: SizedBox(
                    height: 40,
                    width: 350,
                    child: ElevatedButton(
                      onPressed: () {

                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme
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
                SizedBox(height: 8.0),
                Center(
                  child: SizedBox(
                    height: 40,
                    width: 350,
                    child: ElevatedButton(
                      onPressed: () {

                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme
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
        ),
      );
    }

  void _navigateToLoginPage(BuildContext context) {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) {
          return LoginPage();
        },)
    );
  }

  bool _isUserInputValid() {
    String name = _nameController.text;
    String emailAddress = _emailAddressController.text;
    String password = _passwordController.text;

    String errorMessage = "";
    if (name.isEmpty){
      errorMessage = "Name can not be empty";
    }else if(emailAddress.isEmpty){
      errorMessage = "Email cannot be empty";
    }else if(password.isEmpty || password.length < 8){
      errorMessage = "Enter a strong password greater than 7 characters";
    }
    if(errorMessage.isNotEmpty){
      //Show Snackbar Alert
      ScaffoldMessenger
          .of(context)
          .showSnackBar(SnackBar(content: Text(errorMessage)));
      return false;
    }

    return true;
  }
}






