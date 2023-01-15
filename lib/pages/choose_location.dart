import 'package:flutter/material.dart';
import 'package:world_timer/pages/services/world_time.dart';

//shortcut is "stful"
class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  List<WorldTime> locations = [
    WorldTime('Europe/London','London','uk.png'),
    WorldTime('Europe/Berlin','Athens','greece.png'),
    WorldTime('Africa/Cairo','Cairo','egypt.png'),
    WorldTime('Africa/Nairobi','Nairobi','kenya.png'),
    WorldTime('America/Chicago','Chicago','usa.png'),
    WorldTime('America/New_York','New York','usa.png'),
    WorldTime('Asia/Seoul', 'Seoul','south_korea.png'),
    WorldTime('Asia/Jakarta','Jakarta','indonesia.png'),
  ];

  @override
  void initState() {
    super.initState();
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
      body:ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
              child: Card(
                child: ListTile(
                  onTap: () {},
                  title: Text(locations[index].location),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/${locations[index].flag}'),
                  ),
                ),
              ),
            );
          }
      ),
    );
  }
}
