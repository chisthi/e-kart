import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class fourthpage extends StatelessWidget {
  String image2;
  String image3;
  String text4;
  int bottomindex = 0;
  ValueNotifier<int> changing = ValueNotifier(0);

  // String image3;
  fourthpage({
    super.key,
    required this.image2,
    required this.image3,
    required this.text4,
  });
  //fourthpage({super.key,required this.image3});

  // const fourthpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'procuct detials',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                height: 220,
                width: 220,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    image2,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                image3,
                style: GoogleFonts.aBeeZee(),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                text4,
                style: GoogleFonts.abel(fontSize: 30),
              ),
              SizedBox(
                height: 15,
              ),
              Text('${delivery}'),
              SizedBox(
                height: 15,
              ),
              Text('${order}'),
              Row(
                children: [
                  Text('4.5'),
                  Icon(
                    Icons.star,
                    color: Color.fromARGB(255, 231, 210, 14),
                  ),
                ],
              ),
            ]),
          ],
        ),
      ),
      bottomNavigationBar: ValueListenableBuilder(
        valueListenable: changing,
        builder: (context, value, _) => BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Add to Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'Buy',
            ),
          ],
          currentIndex: changing.value,
          onTap: (value) {
            changing.value = value;
          },
        ),
      ),
    );
  }
}

List emberd2 = [
  "A1.jpg",
  "A2.jpg",
  "A3.jpg",
  "A4.jpg",
  "A5.jpg",
];
List text = [
  " Price-70000  ",
  " price-1200",
  " Price-3999 ",
  " Price-999 us polo",
  " Price-1599 cargos pants  ",
];

List text3 = [
  "Watch M116610LV-000Rolex Submariner ",
  "Lymio Casual Shirt for Men|| ",
  "LOUIS VUITTON LV TRAINER",
  "Polo store Sports/Regular Cap",
  "Styzon  Special price",
];

List rating = ["4.5"];

List delivery = ['Deliverd by 30 October Friday'];
List order = ['if orderd before 5:05 PM'];
