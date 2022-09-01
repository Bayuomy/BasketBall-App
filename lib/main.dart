import 'package:flutter/material.dart';

void main() {
  runApp(pointCounter());
}

class pointCounter extends StatefulWidget {
  @override
  State<pointCounter> createState() => _pointCounterState();
}

class _pointCounterState extends State<pointCounter> {
  int teamAPoints = 0;

  int teamBpoints = 0;

  void addOnepoint() {
    print('add one point');
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('pointcounter'),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 400,
                  child: Column(
                    children: [
                      Text(
                        'Team A',
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                      Text(
                        '$teamAPoints',
                        style: TextStyle(fontSize: 150),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                        ),
                        onPressed: () {
                          setState(() {
                            teamAPoints++;
                          });
                        },
                        child: Text('Add 1 point'),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.orange),
                        onPressed: () {
                          setState(() {
                            teamAPoints = teamAPoints + 2;
                          });
                        },
                        child: Text('Add 2 point'),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.orange),
                        onPressed: () {
                          setState(() {
                            teamAPoints = teamAPoints + 3;
                          });
                        },
                        child: Text('Add 3 point'),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 400,
                  child: VerticalDivider(
                    thickness: 1,
                    color: Colors.grey,
                    endIndent: 120,
                  ),
                ),
                Container(
                  height: 400,
                  child: Column(
                    children: [
                      Text(
                        'Team B',
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                      Text(
                        '$teamBpoints',
                        style: TextStyle(fontSize: 150),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.orange),
                        onPressed: () {
                          setState(() {
                            teamBpoints++;
                          });
                        },
                        child: Text('Add 1 point'),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.orange),
                        onPressed: () {
                          setState(() {
                            teamBpoints = teamBpoints + 2;
                          });
                        },
                        child: Text('Add 2 point'),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.orange),
                        onPressed: () {
                          setState(() {
                            teamBpoints = teamBpoints + 3;
                          });
                        },
                        child: Text('Add 3 point'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.orange),
                onPressed: () {
                  setState(() {
                    teamAPoints = 0;
                    teamBpoints = 0;
                  });
                },
                child: const Text('Reset'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
