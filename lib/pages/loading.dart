import 'package:flutter/material.dart';
import 'package:world_timer/pages/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

// stful
class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();

}

class _LoadingState extends State<Loading> {


  Future<void> setWorldTime() async {
    WorldTime worldTime = WorldTime("Kenya", "nairobi.png", "Africa/Nairobi");
    await worldTime.getTime();
    //navigate to home page
    // Navigator.pushNamed(context, '/home'); // this will add a stack below it

    final data = {
      'location': worldTime.location,
      'flag': worldTime.flag,
      'time': worldTime.time,
      'isDayTime': worldTime.isDayTime
    };
    Navigator.pushReplacementNamed(
      context,
      '/home',
      arguments: data,
    );

  }

  @override
  void initState() {
    super.initState();
    setWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      body: Container(
        padding: EdgeInsets.all(50),
        margin: EdgeInsets.all(5),
        child: Center(
          child:SpinKitWave(
            color: Colors.white,
            size: 80.0,
          ),
        ),
      ),
    );
  }
}
