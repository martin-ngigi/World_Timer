import 'package:flutter/material.dart';

// short-cut is "stful"
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data ={};

  @override
  Widget build(BuildContext context) {

    //get data from loading page
    final data = ModalRoute.of(context)?.settings.arguments as Map;// "as Map" will cast/convert the object to map
    print(data);

    //set background
    String bgImage = data['isDayTime'] ? 'day.jpg': 'night.jpg'; // if isDayTime is true then isDayTime='day.jpg', else isDayTime='night
    Color? bgColor = data['isDayTime'] ? Colors.grey[100]: Colors.grey[800]; // if isDayTime is true then bgColor=Colors.grey[200], else bgColor=Colors.grey[800]

    return Scaffold(
      /**
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.grey[800],
        centerTitle: true,
      ),
      **/
      backgroundColor: bgColor,
      body: SafeArea( // SafeArea will push/move the child downward instead of occupying the entire appBar..
          child: Container(
            padding: EdgeInsets.fromLTRB(0, 120, 0, 0),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/$bgImage'),
                fit: BoxFit.cover // cover the entire screen
              )
            ),
            child: Column(
              children: [
                TextButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/location');
                  },
                  icon: Icon(Icons.edit_location),
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.green,
                    padding: const EdgeInsets.all(16.0),
                    textStyle: const TextStyle(fontSize: 20),
                  ), label: Text("Choose location."),
                ),
                SizedBox(height: 20.0,),//for spacing purposes
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        data['location'],
                      style: TextStyle(
                        fontSize: 20,
                        letterSpacing: 2,
                          color: Colors.grey[600]
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0,),//for spacing purposes
                Text(
                  data['time'],
                  style: TextStyle(
                    fontSize: 60,
                    color: Colors.grey[400]
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}
