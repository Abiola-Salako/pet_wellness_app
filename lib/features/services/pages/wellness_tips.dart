
import 'package:flutter/material.dart';

class WellnessTips extends StatelessWidget {
  const WellnessTips({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new),
        title: Center(
          child: Text(
            "Wellness Tips",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.more_vert_outlined)
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text("Nutrition",),
                    SizedBox(width: 10,),
                    Icon(Icons.stop,size: 10,),
                    Text("Exercise"),
                    SizedBox(width: 10,),
                    Icon(Icons.stop,size: 10,),
                    Text("Grooming"),
                    SizedBox(width: 10,),
                    Icon(Icons.stop, size: 10,),
                    Text("Preventive care"),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 226,
                decoration: BoxDecoration(
                    color: Color(0xFFFFCC80),
                    shape: BoxShape.rectangle
                ),
                child: Padding(
                  padding:  EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Featured Tip of the Day",
                        style: TextStyle(
                            fontSize: 26,
                            color: Colors.blue,
                            fontWeight: FontWeight.w800
                        ),
                      ),
                      Text(
                        "Best Foods for Healthy Skin:",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black87,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text(
                        "Discover the top foods that promote healthy skin and coat of your pet",
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.black54,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text(
                        "Author: Pet Wellness Magazine",
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.black54,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                      Text(
                        "Date Published: March 20,2024",
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.black54,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Center(
                child: Image.asset("assets/images/friend_pet.png",
                  width: 250,height: 160,),
              ),
              Padding(
                padding:  EdgeInsets.all(16.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Pet Wellness Articles",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          "How to keep your pet active during winter",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black87

                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding:  EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                        //color: Colors.black54
                                          width: 1.0
                                      )
                                  )
                              ),
                              child: Text(
                                "Learn tips and tricks to ensure your pet",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                        //color: Colors.black54
                                          width: 1.0
                                      )
                                  )
                              ),
                              child: Text(
                                "stays active and healthy during the cold",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                        //color: Colors.black54
                                          width: 1.0
                                      )
                                  )
                              ),
                              child: Text(
                                "season",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text(
                        "Understanding Pet anxiety and ways to manage it",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black87

                        ),
                      ),
                      SizedBox(height: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        width: 1.0
                                    )
                                )
                            ),
                            child: Text(
                              "Explore the signs of pet anxiety and discover",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                      //color: Colors.black54
                                        width: 1.0
                                    )
                                )
                            ),
                            child: Text(
                              "effective strategies to help your pet cope",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16
                              ),
                            ),
                          )

                        ],
                      ),

                    ],
                  ),
                ),
              )
            ],
          )
      ),
    );
  }
}
