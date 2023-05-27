import 'package:flutter/material.dart';

class SearchItem extends StatelessWidget {
  final String title;
  final int price;
  final String imgpath;

  const SearchItem(
      {super.key,
      required this.imgpath,
      required this.title,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15),
      margin: EdgeInsets.only(right: 15, bottom: 20),
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Image.asset(
            imgpath,
            height: 80,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          Text('RS. ${price}'),
        ],
      ),
    );
  }
}
