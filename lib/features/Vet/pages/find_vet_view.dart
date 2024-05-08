
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FindVetView extends StatelessWidget {
  FindVetView({super.key});
  final List<String> imagePaths = [
    "assets/images/vaccc_img.png",
    "assets/images/meal_plaan.png",
    "assets/images/doc_appp.png",
    "assets/images/medd.png",
    "assets/images/belll.png",
  ];

  // List of titles
  final List<String> titles = [
    "Vaccination",
    "Meal Planning",
    "Appointment",
    "Medication",
    "Reminder",
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.location_on_rounded,

        color: Color(0xFF0079BF),
        ),
        title: Text("Lagos, Nigeria",
        style: TextStyle(
          color: Color(0xFF0079BF),
          fontSize: 16
        ),
        ),
      ),
      body: ListView(
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: SizedBox(height: 18,
                  child: Text("Nearby Veterinary",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Container(margin: EdgeInsets.symmetric(vertical: 16.0),
                      padding: EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Color( 0xFF0079BF),
                        borderRadius: BorderRadius.circular(4.0)
                      ),
                    child: const SizedBox(width: 150,
                      child: Text(
                        "Let's Find Specialist Doctor for Your Pets!",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                  ),
                  Image.asset("assets/images/hard_img.png")
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Our Services",
                    style: TextStyle(
                      fontWeight: FontWeight.w500
                    ),),
                    TextButton(onPressed: (){},
                        child: Text("See All",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        )
                    ),
                  ],
                ),
              ),

              Container(
                height: 100, // Adjust the height according to your needs
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.all(5),
                      width: 100, // Adjust the width according to your needs
                      child: Column(
                        children: [
                          Image.asset(
                            imagePaths[index], // Replace with your image path
                            height: 60, // Adjust the height according to your needs
                            width: 60, // Adjust the width according to your needs
                          ),
                          SizedBox(height: 5),
                          Text(
                            titles[index], // Replace with your image title
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(height: 100,
                      padding: EdgeInsets.only(right: 16.0, left:16.0),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Image.asset("assets/images/smiling_doctor.png",
                        height: 80, width: 80,)
                  ),
                  SizedBox(height: 130,
                    child: Container(height:120,width: 200,
                    padding: EdgeInsets.all(8.0),

                     child: Column(
                     children: [
                      SizedBox(height: 32,width: 120,
                        child: Text(
                          'Dr Joseph Martins',
                          style: TextStyle(fontSize: ScreenUtil().setSp(16)),
                           ),
                      ),
                          SizedBox(height: 32,width: 120,
                            child: Text(
                               'Veterinary Dentist',
                              style: TextStyle(fontSize: ScreenUtil().setSp(14)),
                            ),
                          ),
                            //SizedBox(height: 4,),
                             SizedBox(height: 40,width: 180,
                               child: Row(

                               children: [
                                  SizedBox(height: 28,
                                    child: IconButton(
                                      icon: Image.asset("assets/images/ph_star.png",
                                        height: 18,width: 18,),
                                      onPressed: () {
                                        // Add onPressed functionality here
                                        },
                                    ),
                                  ),
                               SizedBox(height: 28,width: 38,
                                   child: Text("4.9",
                                   )),
                               SizedBox(height: 28,
                                 child: IconButton(
                                   icon: Icon(Icons.location_on_rounded,size: 16,),
                                 onPressed: () {
                                  // Add onPressed functionality here
                                                            },

                                      ),
                               ),
                                 SizedBox(height: 28,width: 38,
                                     child: Text("1.5km"
                                     ))
                                 ],
                                      ),
                             ),
                              ],
                              ),
                             ),
                  ),
                ],
          ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(height: 100,
                      padding: EdgeInsets.only(right: 16.0, left:16.0),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Image.asset("assets/images/female_doc.png",
                        height: 80, width: 80,)
                  ),
                  SizedBox(height: 130,
                    child: Container(height:120,width: 200,
                      padding: EdgeInsets.all(8.0),

                      child: Column(
                        children: [
                          SizedBox(height: 32,width: 120,
                            child: Text(
                              'Dr Venera Jones',
                              style: TextStyle(fontSize: ScreenUtil().setSp(16)),
                            ),
                          ),
                          SizedBox(height: 32,width: 120,
                            child: Text(
                              'Veterinary Specialist',
                              style: TextStyle(fontSize: ScreenUtil().setSp(14)),
                            ),
                          ),
                          //SizedBox(height: 4,),
                          SizedBox(height: 40,width: 180,
                            child: Row(

                              children: [
                                SizedBox(height: 28,
                                  child: IconButton(
                                    icon: Image.asset("assets/images/ph_star.png",
                                      height: 18,width: 18,),
                                    onPressed: () {
                                      // Add onPressed functionality here
                                    },
                                  ),
                                ),
                                SizedBox(height: 28,width: 38,
                                    child: Text("4.6",
                                    )),
                                SizedBox(height: 28,
                                  child: IconButton(
                                    icon: Icon(Icons.location_on_rounded,size: 16,),
                                    onPressed: () {
                                      // Add onPressed functionality here
                                    },

                                  ),
                                ),
                                SizedBox(height: 28,width: 38,
                                    child: Text("3.2km"
                                    ))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(height: 100,
                      padding: EdgeInsets.only(right: 16.0, left:16.0),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Image.asset("assets/images/black_doc.png",
                        height: 80, width: 80,)
                  ),
                  SizedBox(height: 130,
                    child: Container(height:120,width: 200,
                      padding: EdgeInsets.all(8.0),

                      child: Column(
                        children: [
                          SizedBox(height: 32,width: 120,
                            child: Text(
                              'Dr Myde Gill',
                              style: TextStyle(fontSize: ScreenUtil().setSp(16)),
                            ),
                          ),
                          SizedBox(height: 32,width: 120,
                            child: Text(
                              'Veterinary Dermatologist',
                              style: TextStyle(fontSize: ScreenUtil().setSp(14)),
                            ),
                          ),
                          //SizedBox(height: 4,),
                          SizedBox(height: 40,width: 180,
                            child: Row(

                              children: [
                                SizedBox(height: 28,
                                  child: IconButton(
                                    icon: Image.asset("assets/images/ph_star.png",
                                      height: 18,width: 18,),
                                    onPressed: () {
                                      // Add onPressed functionality here
                                    },
                                  ),
                                ),
                                SizedBox(height: 28,width: 38,
                                    child: Text("4.5",
                                    )),
                                SizedBox(height: 28,
                                  child: IconButton(
                                    icon: Icon(Icons.location_on_rounded,size: 16,),
                                    onPressed: () {
                                      // Add onPressed functionality here
                                    },

                                  ),
                                ),
                                SizedBox(height: 28,width: 38,
                                    child: Text("1.5km"
                                    ))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(height: 100,
                      padding: EdgeInsets.only(right: 16.0, left:16.0),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Image.asset("assets/images/young_doc.png",
                        height: 80, width: 80,)
                  ),
                  SizedBox(height: 130,
                    child: Container(height:120,width: 200,
                      padding: EdgeInsets.all(8.0),

                      child: Column(
                        children: [
                          SizedBox(height: 32,width: 120,
                            child: Text(
                              'Dr Lola Thompson',
                              style: TextStyle(fontSize: ScreenUtil().setSp(16)),
                            ),
                          ),
                          SizedBox(height: 32,width: 120,
                            child: Text(
                              'Veterinary Surgeon',
                              style: TextStyle(fontSize: ScreenUtil().setSp(14)),
                            ),
                          ),
                          //SizedBox(height: 4,),
                          SizedBox(height: 40,width: 180,
                            child: Row(

                              children: [
                                SizedBox(height: 28,
                                  child: IconButton(
                                    icon: Image.asset("assets/images/ph_star.png",
                                      height: 18,width: 18,),
                                    onPressed: () {
                                      // Add onPressed functionality here
                                    },
                                  ),
                                ),
                                SizedBox(height: 28,width: 38,
                                    child: Text("3.9",
                                    )),
                                SizedBox(height: 28,
                                  child: IconButton(
                                    icon: Icon(Icons.location_on_rounded,size: 16,),
                                    onPressed: () {
                                      // Add onPressed functionality here
                                    },

                                  ),
                                ),
                                SizedBox(height: 28,width: 38,
                                    child: Text("4.2km"
                                    ))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
        ],
      )
    ],
    ),
    );
  }
}
