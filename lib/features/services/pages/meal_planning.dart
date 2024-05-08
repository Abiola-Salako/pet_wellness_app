import 'package:flutter/material.dart';

class MealPlanningScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.notifications, color: Colors.blue),
          onPressed: () {},
        ),
        title: Text(
          'Set Feeding Reminder',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 16,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0), // Padding applied to the ListView
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Add Meal',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
              ),
              SizedBox(height: 10),
              Text(
                'Date:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text('Meal Type: ', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                  SizedBox(width: 5),
                  Text('Breakfast ', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                  SizedBox(width: 5),
                  Text('Lunch', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                  SizedBox(width: 5),
                  Text('Dinner ', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                  SizedBox(width: 5),
                  Text('Snacks', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text('Food Name: ', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                  SizedBox(width: 5),
                  Text('Cookies', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text('Quantity: ', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                  SizedBox(width: 5),
                  Text('550g', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                ],
              ),
              SizedBox(height: 24),
              Text(
                'Meal Log',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
              ),
              SizedBox(height: 10),
              SizedBox(height: 10),
              Row(
                children: [
                  Text('22-04-24',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                  SizedBox(width: 8),
                  Text('Breakfast ',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                  SizedBox(width: 5),
                  Text('Biscuits',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                  SizedBox(width: 5,),
                  Text('100g',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                  IconButton(
                    icon: Icon(Icons.edit,size: 8,),
                    onPressed: () {},),
                  IconButton(
                    icon: Icon(Icons.delete,size: 8,),
                    onPressed: () {},),
                ],
              ),
              SizedBox(height: 7),
              Row(
                children: [
                  Text('22-04-24',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                  SizedBox(width: 8),
                  Text('Breakfast ',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                  SizedBox(width: 5),
                  Text('Biscuits',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                  SizedBox(width: 5,),
                  Text('100g',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                  IconButton(
                    icon: Icon(Icons.edit,size: 8,),
                    onPressed: () {},),
                  IconButton(
                    icon: Icon(Icons.delete,size: 8,),
                    onPressed: () {},),
                ],
              ),
              SizedBox(height: 7),
              Row(
                children: [
                  Text('22-04-24',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                  SizedBox(width: 8),
                  Text('Breakfast ',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                  SizedBox(width: 5),
                  Text('Biscuits',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                  SizedBox(width: 5,),
                  Text('100g',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                  IconButton(
                    icon: Icon(Icons.edit,size: 8,),
                    onPressed: () {},),
                  IconButton(
                    icon: Icon(Icons.delete,size: 8,),
                    onPressed: () {},),
                ],
              ),
              SizedBox(height: 7),
              Row(
                children: [
                  Text('22-04-24',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                  SizedBox(width: 8),
                  Text('Breakfast ',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                  SizedBox(width: 5),
                  Text('Biscuits',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                  SizedBox(width: 5,),
                  Text('100g',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                  IconButton(
                    icon: Icon(Icons.edit,size: 8,),
                    onPressed: () {},),
                  IconButton(
                    icon: Icon(Icons.delete,size: 8,),
                    onPressed: () {},),
                ],
              ),
              SizedBox(height: 7),
              Row(
                children: [
                  Text('22-04-24',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                  SizedBox(width: 8),
                  Text('Breakfast ',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                  SizedBox(width: 5),
                  Text('Biscuits',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                  SizedBox(width: 5,),
                  Text('100g',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                  IconButton(
                    icon: Icon(Icons.edit,size: 8,),
                    onPressed: () {},),
                  IconButton(
                    icon: Icon(Icons.delete,size: 8,),
                    onPressed: () {},),
                ],
              ),
              SizedBox(height: 7),
              Row(
                children: [
                  Text('22-04-24',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                  SizedBox(width: 8),
                  Text('Breakfast ',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                  SizedBox(width: 5),
                  Text('Biscuits',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                  SizedBox(width: 5,),
                  Text('100g',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                  IconButton(
                    icon: Icon(Icons.edit,size: 8,),
                    onPressed: () {},),
                  IconButton(
                    icon: Icon(Icons.delete,size: 8,),
                    onPressed: () {},),
                ],
              ),
              SizedBox(height: 24),
              Text(
                'Meal Summary',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text('Total Calories Consumed:',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                  SizedBox(width: 56),
                  Text('37.8g',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                ],
          ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text('Protein Intake:',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                  SizedBox(width: 128),
                  Text('8.40g',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text('Carbohydrate Intake:',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                  SizedBox(width: 88),
                  Text('76.4g',style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                ],
              ),
            ],
          ),
         ],
      ),
    );
  }
}

