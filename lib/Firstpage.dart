import 'package:flutter/material.dart';
import 'dart:async';

import 'Secondpage.dart';
class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  @override
  void initState() {

    Timer(Duration(seconds: 6),()=>Navigator.push(context,MaterialPageRoute(builder: (context)=> Secondpage())));
  }

  @override
  Widget build(BuildContext context) {
    return Container( height: 200,
      child: Column(
        children:<Widget> [
          Image.asset('img.png'),
          Text('█▓▒▒░░░e-kart░░░▒▒▓█',style: TextStyle(color: Colors.black,fontSize: 25),)
        ],
      ),
    );
  }
}
