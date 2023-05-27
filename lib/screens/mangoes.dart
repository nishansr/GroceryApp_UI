import 'package:flutter/material.dart';

class Mangoes extends StatelessWidget {
  const Mangoes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              alignment: Alignment.topCenter,
              height: 900,
              width: 385,
              child: Image.asset('assets/mangoes.png'),
            ),
            Positioned(
              top: 280,
              child: Column(
                children: [
                  Container(
                    width: 385,
                    height: 220,
                    decoration: BoxDecoration(
                      color: Color(0xffA0E7E5),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.arrow_circle_left_outlined, size: 18),
                              SizedBox(width: 5),
                              Text('Back'),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                'Mad Mangoes',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Golden Ripe Alphonsa mangoes delivered to your house in the most hygenic way ever... Best for eating plain but can also be made into shakes and cakes.',
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Mangos contain over 20 different vitamins and minerals, helping to make them a superfood.',
                                textAlign: TextAlign.center,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 15),
                    width: 385,
                    height: 232,
                    decoration: BoxDecoration(
                      color: Color(0xffC6F8F6),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Calories',
                          style: TextStyle(fontSize: 25),
                        ),
                        Text(
                          'per 100 grams',
                          style: TextStyle(fontSize: 15),
                        ),
                        Stack(
                          children: [
                            Image.asset(
                              'assets/vector1.png',
                              height: 160,
                            ),
                            Positioned(
                              top: 45,
                              left: 63,
                              child: Text(
                                '60',
                                textScaleFactor: 3,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 385,
                    height: 180,
                    decoration: BoxDecoration(
                      color: Color(0xffA0E7E5),
                    ),
                    child: Column(
                      children: [
                        Text('1 Kg = 120 Rs', textScaleFactor: 3),
                        SizedBox(height: 20),
                        MaterialButton(
                          color: Color(0xffffaebc),
                          onPressed: () {},
                          child: Text(
                            'Add to Cart',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w300),
                          ),
                          elevation: 0.0,
                          hoverColor: Color(0xffC6F8F6),
                          padding: EdgeInsets.only(
                              top: 20, left: 40, right: 40, bottom: 20),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
