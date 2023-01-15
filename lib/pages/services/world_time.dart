import 'package:http/http.dart';
import 'dart:convert'; // imports jsonDecode
import 'package:intl/intl.dart';

class WorldTime{

  late String location; //location name for the UI
  late String time; //the time in that location
  late String flag; //Url to a an asset flag icon/image
  late String url; //url for api endpoint i.e. // http://worldtimeapi.org/api/timezone/Africa/Nairobi

  //constructor
  WorldTime(this.location, this.flag, this.url);

  //simulate network request for time
  Future<void> getTime() async{

    try{
      Response response = await get(Uri.parse( "http://worldtimeapi.org/api/timezone/$url"));
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

      //set and formt the time property
      // time = now.toString();
      time = DateFormat.jm().format(now);
    }
    catch(e){
      print("Error: $e");
      time = "Could not get time data";
    }


  }



}