import 'package:flutter/material.dart';
import 'package:world_timer/pages/services/world_time.dart';

// stful
class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();

}

class _LoadingState extends State<Loading> {

  String time = 'loading...';

  Future<void> setWorldTime() async {
    WorldTime worldTime = WorldTime("Kenya", "nairobi.png", "Africa/Nairobi");
    await worldTime.getTime();
    print(worldTime.time);
    setState(() {
      time = worldTime.time;
    });
  }

  @override
  void initState() {
    super.initState();
    setWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(50),
        margin: EdgeInsets.all(5),
        child: Text(time),
      ),
    );
  }
}
