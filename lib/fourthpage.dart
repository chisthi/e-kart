import 'package:flutter/material.dart';
import 'package:flutterr2/p1/list.dart';


class fourthpage extends StatelessWidget {
  String image2;
 String image3;
 // String image3;
  fourthpage({super.key,required this.image2,required this.image3});
  //fourthpage({super.key,required this.image3});


  // const fourthpage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back_rounded),
              onPressed: (){Navigator.pop(context);},
            ),
          ),
          body:Padding(
            padding: const EdgeInsets.all(10),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('procuct detials',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),

                SizedBox(
                  height: MediaQuery.of(context).size.width*0.3,
                ),
          
               Center(
                 child: Container(
                   height: 200,
                   width: 200,
                   child:

                       Image.asset(image2,fit: BoxFit.cover,),




                 ),
               ),
                Center(child: Text(image3)),
              ],
            ),
          ),

      ),
    );
  }
}

List emberd2=[
  "A1.jpg",
  "A2.jpg",
  "A3.jpg",
  "A4.jpg",
  "A5.jpg",

];
List text=[
  " Price-70000 rolex  brand one",
  " Price-1200 shirts for men",
  " Price-3999 Luis vuitton",
  " Price-999 us polo",
  " Price-1599 cargos pants",
];

