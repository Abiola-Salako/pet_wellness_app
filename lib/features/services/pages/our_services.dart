import 'package:flutter/material.dart';
import 'package:pet_wellness_app/features/services/pages/meal_planning.dart';
import 'package:pet_wellness_app/features/services/pages/wellness_tips.dart';
import 'package:pet_wellness_app/features/services/widgets/service_content_item.dart';

class ServiceView extends StatelessWidget {
  const ServiceView({super.key,});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Text("SERVICES",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [

        Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Image.asset("assets/images/content_box_oone.png",
                    height: 150, width: 150,)
              ),
              TextButton(onPressed: (){},
                child: Text("Schedule Consultations",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Image.asset("assets/images/content_box_twwoo.png",
                    height: 150, width: 150,)
              ),
              TextButton(onPressed: (){},
                child: Text("Find a nearby Vet",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Image.asset("assets/images/vet_appoint.png",
                    height: 150, width: 150,)
              ),
              TextButton(onPressed: (){},
                child: Text("Reminders",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MealPlanningScreen()),
                );

                },
               child:Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Image.asset("assets/images/content_box_four.png",
                    height: 150, width: 150,)
              ),
              ),
              TextButton(onPressed: (){},
                child: Text("Meal Planning",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Image.asset("assets/images/content_box_five.png",
                    height: 150, width: 150,)
              ),
              TextButton(onPressed: (){},
                child: Text("Veterinary Consultations",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
            GestureDetector(
            onTap: () {Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => WellnessTips()),
             );

            },
    child: Container(
    decoration: BoxDecoration(
    color: Colors.grey.shade300,
    borderRadius: BorderRadius.circular(8),
    ),
    child: Image.asset(
    "assets/images/content_box_six.png",
    height: 150,
    width: 150,
    ),
    ),
    ),
              TextButton(onPressed: (){},
                child: Text("Wellness Tips",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          )
        ],
      )
        ],
      ),
    );
  }
}

