

import 'package:flutter/material.dart';
import 'package:pet_wellness_app/features/signup/pages/sign_up_page.dart';
import 'package:pet_wellness_app/onboarding/pages/onboard_two.dart';

class OnboardScreenThree extends StatelessWidget {
  const OnboardScreenThree({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration:BoxDecoration(
              color:Color(0xFF0079BF)
          ),
          padding: EdgeInsets.only(top: 130),

          child:Column(mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/images/couple_dog_img.png",
                  width:280,height: 320),
              SizedBox(width: 300,height: 87,
                child:
                Text("Join countless of pets owners around the world"
                    " that use petcodex for their pets wellness ",
                  style:TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 70),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(width:130,height:35 ,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                               context,
                              MaterialPageRoute(builder: (context){
                               return CreateAccountPage();
                              }),
                           );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF75CDFF),
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.0)
                          ),
                        ),
                        child:
                            Text(
                              "Get started",
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF090909),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only (left:16.0, right: 20.0,bottom: 8.0),
                    child: SizedBox(width:100, height: 20,
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset("assets/images/ellipse_two_img.png",height: 15,width: 15,),
                          Image.asset("assets/images/ellipse_two_img.png",height: 15,width: 15,),
                          Image.asset("assets/images/elipse_one_img.png",height: 15,width: 15,),
                        ],
                      ),
                    ),
                  ),

                ],
              ),



            ],
          )




      ),
    );

  }
}
