import 'package:flutter/material.dart';

class FoodItem extends StatelessWidget {
  final String item;
  final Color color;
  final String image;

  FoodItem({
    required this.item,
    required this.color,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 11),
          child: Column(
            children: [
              Image.asset(image, height: 60),
              SizedBox(width: 30),
              Text('$item', style: TextStyle(fontFamily: 'Poppins')),
            ],
          ),
        ),
      ),
    );
  }
}
