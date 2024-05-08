import 'package:flutter/material.dart';
import 'package:pet_wellness_app/features/home/pages/settings_page.dart';
import 'package:pet_wellness_app/features/services/pages/our_services.dart';
import 'package:pet_wellness_app/features/tracking/pages/health_tracking.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage("assets/images/proffile_img.png")
          ),
        ),
        title: Text("Hello Josie,",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Colors.black,

        ),
        ),
        actions: [
          IconButton(
            color: Colors.blue,
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SearchBoxSession()),
              );

            },
            icon: Icon(Icons.notifications,
              size: 20,
            ),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(8.0),
        children: [
          Container(margin: EdgeInsets.symmetric(vertical: 16.0),
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
                color: Color( 0xFF0079BF),
                borderRadius: BorderRadius.circular(8.0)
            ),
            child: Row(
              children: [
                SizedBox(width:200,
                  child: Text("Find a nearby veterinarian for your pets"
                  " and schedule an appointment",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(width: 90,
                      child: Image.asset("assets/images/vet_doc.png")),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFFF8C00),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Image.asset("assets/images/card_box_one.png",
                          height: 140, width: 140,)
                    ),
                    TextButton(onPressed: (){},
                      child: Text("My Pet",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF0079BF),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Image.asset("assets/images/card_box_two.png",
                          height: 140, width: 140,)
                    ),
                    TextButton(onPressed: (){},
                      child: Text("Appointments",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0, left: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
            GestureDetector(
            onTap: () {
            Navigator.push(
             context,
            MaterialPageRoute(builder: (context) => HealthView()),
            );
            },
              child: Container(
              decoration: BoxDecoration(
              color: Color(0xFFE2E6E9),
               borderRadius: BorderRadius.circular(8),
                ),
                child: Image.asset(
                "assets/images/card_box_three.png",
                 height: 140,
                 width: 140,
                ),
                ),
                ),
                TextButton(onPressed: (){},
                child: Text("Health Tracker",
                style: TextStyle(
                 color: Colors.black,
                fontWeight: FontWeight.w500
            ),
           ),
          ),
           ],
          ),

                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ServiceView()),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF75CDFF),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Image.asset(
                          "assets/images/card_box_four.png",
                          height: 140,
                          width: 140,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Services",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
         Container(
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
          color: Color( 0xFF0079BF),
          ),
           child: Column(crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               SizedBox(height:16,
                 child: Text("Upcoming Appointments",
                     style: TextStyle(
                       color: Colors.white,
                       fontWeight: FontWeight.w500
                     ),
                 ),
               ),
               SizedBox(height: 40,
                 child: Row(mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     Text(".You do not have any appointments,",
                       style: TextStyle(
                           color: Colors.white,

                       ),
                     ),
                     TextButton(
                       onPressed: (){},
                       child: Text("Schedule Now.",
                         style: TextStyle(
                             color: Colors.orangeAccent
                         ),
                       ),
                       ),
                   ],
                 ),
               ),
             ],
           ),
         ),
          TextButton(onPressed: (){},
              child: SizedBox(height: 34,
                child: Text("Check out Dr Solo,pet owners "
                    "in your community rate him 5 stars",
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationColor: Color(0xFFFF8C00),
                  fontSize: 15,
                  color: Color(0xFFFF8C00),
                ),),
              ),
          ),



        ],
      ),
    );
  }
}
