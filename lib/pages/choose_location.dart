import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert'; // imports jsonDecode

//shortcut is "stful"
class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  /**
  //simulate network request for time
  void getTime() async{
    Response response = await get(Uri.parse( "http://worldtimeapi.org/api/timezone/Africa/Nairobi"));
    print(response.body); //un-decoded data
    Map data = jsonDecode(response.body); //decoded data
    //print("\nDecoded data is: \n $data");
    //print("\nUserId : ${data['id']}    Title : ${data['title']}");

  }
      **/

  @override
  void initState() {
    super.initState();
    //getTime();
  }

  @override
  Widget build(BuildContext context) {


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
