import 'package:flutter/material.dart';

//shortcut is "stful"
class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  //simulate network request for a username
  void getData(){
    Future.delayed(Duration(seconds: 3), (){
      print("Its Martin 3.");
    });

    Future.delayed(Duration(seconds: 2), (){
      print("Its Martin 2.");
    });

    print("statement.");
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    getData();

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Choose location"),
        backgroundColor: Colors.blue[900],
        centerTitle: true,
        elevation: 0,
      ),
      body: Text("Hey"),
    );
  }
}
