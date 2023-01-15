import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert'; // imports jsonDecode

// stful
class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();

}

class _LoadingState extends State<Loading> {

  //simulate network request for time
  void getTime() async{
    Response response = await get(Uri.parse( "http://worldtimeapi.org/api/timezone/Africa/Nairobi"));
    //print(response.body); //un-decoded data
    Map data = jsonDecode(response.body); //decoded data

    //get properties from data
    String datetime = data['datetime'];
    String offset = data['utc_offset']; //i.e. "+03:00"
    offset = offset.substring(1, 3); //i.e. "03" ...... get hours from the string
    //print(datetime);
    //print(offset);

    //create datetime object
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));
    print(now);

  }

  @override
  void initState() {
    super.initState();

    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("Loading screen"),
    );
  }
}
