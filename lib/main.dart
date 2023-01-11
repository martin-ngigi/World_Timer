import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
          home: Home()
      )
  );
}

//short-cut is stless
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Scaffold allows us to create a well layered app with appbar, body
    return Scaffold(
      appBar: AppBar(
        title: Text("World Timer App"),
      ),
    );
  }
}
