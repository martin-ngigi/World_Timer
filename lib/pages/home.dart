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

    return Scaffold(
      /**
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.grey[800],
        centerTitle: true,
      ),
      **/
      body: SafeArea( // SafeArea will push/move the child downward instead of occupying the entire appBar..
          child: Container(
            padding: EdgeInsets.fromLTRB(0, 120, 0, 0),
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
                        letterSpacing: 2
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0,),//for spacing purposes
                Text(
                  data['time'],
                  style: TextStyle(
                    fontSize: 60
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}
