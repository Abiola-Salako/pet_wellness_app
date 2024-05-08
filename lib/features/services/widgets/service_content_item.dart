
import 'package:flutter/material.dart';

class ServiceContentItems extends StatelessWidget {
  const ServiceContentItems({
    super.key,

    required this.imagePath,
    required this.title,
    required this.backgroundColor,
    required this.width,
    required this.height,
  });
  final  String imagePath;
  final double width;
  final double height;
  final String title;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}

