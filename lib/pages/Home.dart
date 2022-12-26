import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CreatePetPage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PetInfo"),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Center(
              child: Image.asset("assets/images/homePage.jpeg"),
            ),
            TextButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: const BorderSide(color: Colors.blueAccent)),
                ),
              ),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => CreatePetPage()));
              },
              child: const Text("Add Pet"),
            ),
            TextButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: Colors.blueAccent)),
                ),
              ),
              onPressed: () {
                //Navigator.of(context).push(MaterialPageRoute(builder: (context) => CreatePetPage()));
              },
              child: Text("View Pets"),
            ),
          ],
        ),
      ),
    );
  }
}
