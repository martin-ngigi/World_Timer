import 'package:flutter/material.dart';

// short-cut is "stful"
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /**
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.grey[800],
        centerTitle: true,
      ),
      **/
      body: SafeArea( // SafeArea will push/move the child downward instead of occupying the entire appBar..
          child: Text("Home Page")
      ),
    );
  }
}
