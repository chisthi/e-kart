import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:flutterc/ShopingApp.dart';

import 'fourthpage.dart';

class Thirdpage extends StatelessWidget {
  double kDefaultPaddin = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'menu',
            onPressed: () {},
          ),
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: Icon(Icons.search_outlined)),
            SizedBox(
              width: kDefaultPaddin / 2,
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
          ],
        ),
        body: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 20.0,
            mainAxisSpacing: 20.0,
            children: List.generate(ember.length, (index) {
              return Container(
                height: 20.0,
                width: 20.0,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => fourthpage(
                                  image2: ember[index],
                                  image3: text[index],
                                  text4: text3[index],
                                )));
                  },
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(6),
                        child: Image.asset(
                          ember[index],
                          height: 210.0,
                          width: 210.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 11,
                      ),
                      Text(
                        text1[index],
                        style: GoogleFonts.aBeeZee(color: Colors.black),
                      ),
                    ],
                  ),
                  //      borderRadius:BorderRadius.circular(20.0),
                ),
              );
            })));
  }
}

List ember = [
  "A1.jpg",
  "A2.jpg",
  "A3.jpg",
  "A4.jpg",
  "A5.jpg",
];
List text1 = [
  " Price-70000 rolex  brand one",
  " Price-1200 shirts for men",
  " Price-3999 Luis vuitton",
  " Price-999 us polo",
  " Price-1599 cargos pants",
];
