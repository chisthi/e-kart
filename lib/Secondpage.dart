import 'package:flutter/material.dart';

import 'Thirdpage.dart';

class Secondpage extends StatelessWidget {
  const Secondpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            Text('login screen',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Colors.black)),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.1,
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'e-mail', border: OutlineInputBorder()),
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.1,
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'password', border: OutlineInputBorder()),
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(color: Colors.black),
              obscureText: true,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.1,
              child: Padding(
                padding: EdgeInsets.all(15.0),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Thirdpage()));
                },
                child: Text('login'))
          ],
        ),
      ),
    );
  }
}
