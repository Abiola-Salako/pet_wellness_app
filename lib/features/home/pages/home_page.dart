import 'package:flutter/material.dart';
import 'package:pet_wellness_app/features/Pet/pages/pet_view.dart';
import 'package:pet_wellness_app/features/Vet/pages/find_vet_view.dart';
import 'package:pet_wellness_app/features/home/pages/home_view.dart';
import 'package:pet_wellness_app/features/profile/pages/profile_view.dart';
import 'package:pet_wellness_app/features/services/pages/our_services.dart';

class HomePage extends StatefulWidget {
   HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();

   static route() => MaterialPageRoute(builder: (context) => HomePage(),);


}

class _HomePageState extends State<HomePage> {
  var listOfPages = [
    HomeView(),
    MyPetView(),
    FindVetView(),
    ProfileView(),  ];

 var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: IndexedStack(
        children: listOfPages,
        index: selectedIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.blue,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: (value) { setState(() {
          selectedIndex=value;
        });
          },
        items: [
          BottomNavigationBarItem(
            icon  :Icon(Icons.home_rounded),
              label: "Home"),
          BottomNavigationBarItem(
              icon:Image.asset('assets/images/pet_img.png'),
              label: "My Pets"),
          BottomNavigationBarItem(
              icon:Image.asset("assets/images/search_img.png"),
              label: "Find a Vet"),
          BottomNavigationBarItem(
              icon:Image.asset("assets/images/profile-img.png"),
              label: "Profile"),
        ],
      ),

    );
  }
}
