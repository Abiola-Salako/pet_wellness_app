import 'package:flutter/material.dart';
import 'package:pet_wellness_app/features/services/widgets/service_content_item.dart';

class HealthView extends StatelessWidget {
  const HealthView({super.key,});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios_new),
          title: Center(
            child: Text(
              "Health Tracker",
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
          ]
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
                      child: Image.asset("assets/images/science_vacc.png",
                        height: 150, width: 150,)
                  ),
                  TextButton(onPressed: (){},
                    child: Text("Vaccination Record",
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
                      child: Image.asset("assets/images/drum_stickk.png",
                        height: 150, width: 150,)
                  ),
                  TextButton(onPressed: (){},
                    child: Text("Nutrition Record",
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
                      child: Image.asset("assets/images/med_pills.png",
                        height: 150, width: 150,)
                  ),
                  TextButton(onPressed: (){},
                    child: Text("Medical History",
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
                      child: Image.asset("assets/images/appointts_img.png",
                        height: 150, width: 150,)
                  ),
                  TextButton(onPressed: (){},
                    child: Text("Vet Appointments",
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
                      child: Image.asset("assets/images/scale_floor .png",
                        height: 150, width: 150,)
                  ),
                  TextButton(onPressed: (){},
                    child: Text("Weight Tracker",
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
                      child: Image.asset("assets/images/red_book.png",
                        height: 150, width: 150,)
                  ),
                  TextButton(onPressed: (){},
                    child: Text("Exercise Logs",
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
                      child: Image.asset("assets/images/thermo_meter.png",
                        height: 150, width: 150,)
                  ),
                  TextButton(onPressed: (){},
                    child: Text("Symptom Checker",
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
                      child: Image.asset("assets/images/online_med.png",
                        height: 150, width: 150,)
                  ),
                  TextButton(onPressed: (){},
                    child: Text("Resources",
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

