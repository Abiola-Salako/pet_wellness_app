
import 'package:flutter/material.dart';
import 'package:pet_wellness_app/onboarding/pages/onboard_two.dart';

class OnboardScreenOne extends StatelessWidget {
  const OnboardScreenOne({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
          decoration:BoxDecoration(
              color:Color(0xFF0079BF)
          ),
          padding: EdgeInsets.only(top: 150),

          child:Column(mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/images/girl_dog_img.png",
                  width:280,height: 320),
              SizedBox(width: 280,height: 100,
                child:
                Text("Welcome to Petcodex where your pet's "
                    "wellbeing takes centre stage",
                  softWrap:true ,
                  style:TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 70),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(width:100,height:35 ,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context){
                                return OnboardScreenTwo();
                              })
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF75CDFF),
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.0)
                          ),
                        ),
                        child:Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Next",
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF090909),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 12,
                              color: Color(0xFF090909),
                            ),
                          ],
                        ),

                      ),
                    ),
                  ],
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only (left:8.0, right: 8.0),
                    child: SizedBox(width:100, height: 20,
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset("assets/images/elipse_one_img.png",height: 15,width: 15,),
                          Image.asset("assets/images/ellipse_two_img.png",height: 15,width: 15,),
                          Image.asset("assets/images/ellipse_two_img.png",height: 15,width: 15,),
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
