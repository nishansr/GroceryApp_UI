import 'package:day2/widgets/search_item.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFBE7C6),
      body: Padding(
        padding: const EdgeInsets.all(27.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //! Back
            Row(
              children: [
                Icon(Icons.arrow_circle_left_outlined, size: 18),
                SizedBox(width: 5),
                Text('Back'),
              ],
            ),
            SizedBox(height: 15),
            //! Search Bar
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
                  hintText: 'Apple',
                ),
              ),
            ),
            SizedBox(height: 15),
            //! Showing 10+ Results
            Text('Showing 10+ Results on "Apple"'),
            //! On Sale
            Text('On Sale', textScaleFactor: 2),
            SizedBox(height: 20),
            //! Royal Gala
            Stack(
              children: [
                Container(
                  height: 150,
                  width: 324,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Image.asset('assets/apple.png', height: 125),
                      SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Royal Gala',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8),
                          Text(
                              'The best indian\napple ever. Red and\njuicy ith no perservatives'),
                          SizedBox(height: 8),
                          Text('Rs 70 Per Kg',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold)),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 20),
            //! Apples
            Wrap(
              alignment: WrapAlignment.spaceBetween,
              children: [
                SearchItem(
                    imgpath: 'assets/greenapple.png',
                    title: 'Green Apple',
                    price: 70),
                SearchItem(
                    imgpath: 'assets/applejuice.png',
                    title: 'Apple Juice',
                    price: 100),
                SearchItem(
                    imgpath: 'assets/cerelacapple.png',
                    title: 'Cerelac Apple',
                    price: 170),
                SearchItem(
                    imgpath: 'assets/applecider.png',
                    title: 'Apple Cider',
                    price: 395),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
