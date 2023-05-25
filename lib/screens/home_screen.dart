import 'package:day2/widgets/foods.dart';
import 'package:flutter/material.dart';
//ignore_for_file: prefer_const_constructors

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFBE7C6),
      body: SingleChildScrollView(
        //! Welcome
        child: Column(
          children: [
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            fontSize: 20),
                      ),
                      Text(
                        'SooperBoy 😆',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Stack(children: [
                      Container(child: Image.asset('assets/Vector.png')),
                      Positioned(
                          top: 30,
                          left: 70,
                          child: Image.asset('assets/image1.png')),
                    ]),
                  ],
                )
              ],
            ),
            SizedBox(height: 20),
            //! search Bar
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              height: 40,
              width: 300,
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Search from over 1000 products',
                ),
              ),
            ),

            //! Morning Essentials
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, left: 30, right: 30, bottom: 20),
              child: Stack(children: [
                Container(
                  height: 180,
                  width: 322,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                ),
                Positioned(
                  left: 10,
                  bottom: -15,
                  child: Image.asset(
                    'assets/image2.png',
                  ),
                ),
                Positioned(
                  top: 15,
                  left: 70,
                  child: Column(
                    children: [
                      Text(
                        'Morning Essentials',
                        style: TextStyle(fontFamily: 'Poppins', fontSize: 20),
                      ),
                      Text(
                        '40% Off',
                        style: TextStyle(fontFamily: 'Poppins'),
                      )
                    ],
                  ),
                )
              ]),
            ),
            //! Snacks, Fuits, Dairy
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    FoodItem(
                        item: 'Snacks',
                        color: Color(0xffA0E7E5),
                        image: 'assets/snacks.png'),
                    SizedBox(width: 11),
                    FoodItem(
                      item: 'Fruits',
                      color: Color(0xffFFAEBC),
                      image: 'assets/fruits.png',
                    ),
                    SizedBox(width: 11),
                    FoodItem(
                        item: 'Snacks',
                        color: Color(0xffFFFFFFF),
                        image: 'assets/snacks.png'),
                    SizedBox(width: 11),
                    FoodItem(
                        item: 'Fruits',
                        color: Color(0xffFFAEBC),
                        image: 'assets/fruits.png'),
                    SizedBox(width: 11),
                    FoodItem(
                        item: 'Snacks',
                        color: Color(0xffA0E7E5),
                        image: 'assets/snacks.png'),
                    SizedBox(width: 11),
                    FoodItem(
                      item: 'Fruits',
                      color: Color(0xffFFAEBC),
                      image: 'assets/fruits.png',
                    ),
                    SizedBox(width: 11),
                    FoodItem(
                        item: 'Snacks',
                        color: Color(0xffFFFFFFF),
                        image: 'assets/snacks.png'),
                    SizedBox(width: 11),
                    FoodItem(
                        item: 'Fruits',
                        color: Color(0xffFFAEBC),
                        image: 'assets/fruits.png'),
                    SizedBox(width: 11),
                  ],
                ),
              ),
            ),
            //!Potato Mango
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, left: 30, right: 30, bottom: 20),
              child: Row(
                children: [
                  //!Potatoes
                  Stack(children: [
                    Container(
                      height: 120,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffA0E7E5)),
                    ),
                    Positioned(
                      right: -10,
                      bottom: 0,
                      child: Image.asset(
                        'assets/potato.png',
                        height: 70,
                      ),
                    ),
                    Positioned(
                      top: 7,
                      left: 15,
                      child: Column(
                        children: [
                          Text(
                            'Potatoes',
                            style:
                                TextStyle(fontFamily: 'Poppins', fontSize: 25),
                          ),
                          Text(
                            '35 rs Only',
                            style: TextStyle(fontFamily: 'Poppins'),
                          )
                        ],
                      ),
                    )
                  ]),
                  SizedBox(width: 22),
                  //! Mangoes
                  Stack(children: [
                    Container(
                      height: 120,
                      width: 148,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffA0E7E5)),
                    ),
                    Positioned(
                      left: -22,
                      child: Image.asset(
                        'assets/basket.png',
                        height: 70,
                      ),
                    ),
                    Positioned(
                      left: 90,
                      top: 25,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '80 rs',
                            style:
                                TextStyle(fontFamily: 'Poppins', fontSize: 18),
                          ),
                          Text(
                            'Only',
                            style: TextStyle(fontFamily: 'Poppins'),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                        top: 68,
                        left: 30,
                        child: Text(
                          'Mangoes',
                          style: TextStyle(fontSize: 25),
                        ))
                  ]),
                ],
              ),
            ),

            //! swing container
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, left: 30, right: 30, bottom: 20),
              child: Stack(children: [
                Container(
                  height: 180,
                  width: 322,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffB4F8C8)),
                ),
                Positioned(
                  left: 9,
                  bottom: -15,
                  child: Image.asset(
                    'assets/swing.png',
                  ),
                ),
                Positioned(
                  top: 15,
                  left: 70,
                  child: Column(
                    children: [
                      Text(
                        'Trending in Town',
                        style: TextStyle(fontFamily: 'Poppins', fontSize: 20),
                      ),
                      Text(
                        'Paper Boat Swings',
                        style: TextStyle(fontFamily: 'Poppins'),
                      )
                    ],
                  ),
                )
              ]),
            ),

            //! Buys Again
            Text(
              'Buy Again',
              style: TextStyle(fontSize: 20, fontFamily: 'Times'),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, left: 30, right: 30, bottom: 10),
              child: Row(
                children: [
                  //!Fruit basket
                  Stack(children: [
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffFFAEBC)),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Image.asset(
                        'assets/fruitBasket.png',
                        height: 120,
                      ),
                    ),
                    Positioned(
                      top: 8,
                      left: 25,
                      child: Text(
                        'Fruit Basket',
                        style: TextStyle(fontFamily: 'Poppins', fontSize: 18),
                      ),
                    )
                  ]),
                  SizedBox(width: 22),
                  //! Museli
                  Stack(children: [
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffFFAEBC)),
                    ),
                    Positioned(
                      bottom: -10,
                      child: Image.asset(
                        'assets/museli.png',
                        height: 110,
                      ),
                    ),
                    Positioned(
                      top: 8,
                      left: 8,
                      child: Column(
                        children: [
                          Text(
                            "Kellogg's Museli",
                            style:
                                TextStyle(fontFamily: 'Poppins', fontSize: 18),
                          ),
                          Text(
                            'Super Saver Pack',
                            style:
                                TextStyle(fontFamily: 'Poppins', fontSize: 10),
                          )
                        ],
                      ),
                    )
                  ]),
                ],
              ),
            ),
            //! Buys Again
            Text(
              'Trending Subscription',
              style: TextStyle(fontSize: 20, fontFamily: 'Times'),
            ),
            //! Milk
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, left: 30, right: 30, bottom: 20),
              child: Stack(children: [
                Container(
                  height: 150,
                  width: 322,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                ),
                Positioned(
                  right: -50,
                  child: Image.asset(
                    'assets/milk.png',
                    height: 150,
                  ),
                ),
                Positioned(
                  top: 8,
                  left: 15,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Moo',
                        style: TextStyle(fontFamily: 'Poppins', fontSize: 22),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Fresh Cow milk\nDelivered in Natural Cartons.\nContains 0% Chemicals',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(height: 7),
                      Row(
                        children: [
                          Text(
                            'Rs 900',
                            style:
                                TextStyle(fontFamily: 'Poppins', fontSize: 20),
                          ),
                          Text(
                            ' Per Month',
                            style: TextStyle(fontFamily: 'Poppins'),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ]),
            ),
            //! Safty
            Padding(
              padding: const EdgeInsets.only(
                  top: 5, left: 30, right: 30, bottom: 70),
              child: Stack(children: [
                Container(
                  height: 150,
                  width: 322,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                ),
                Positioned(
                  right: -50,
                  child: Image.asset(
                    'assets/safty.png',
                    height: 150,
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 15,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Safty First',
                        style: TextStyle(fontFamily: 'Poppins', fontSize: 23),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'A set of masks, sanitizers,\nand soap ever month is\nperfect to prevent catching\nthe coronavirus',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                )
              ]),
            ),
            //! Map
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/Fresh.png'),
                      Text(
                        'Fresh@gmail.com',
                        style: TextStyle(fontSize: 12),
                      ),
                      Text(
                        'Phone No: 1212121212111121',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: Image.asset(
                      'assets/Map.png',
                      height: 150,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Made with ❤️ Sooper_Boy',
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
