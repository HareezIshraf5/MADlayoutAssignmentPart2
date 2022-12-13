// // ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, library_private_types_in_public_api, use_key_in_widget_constructors, unnecessary_new, duplicate_ignore

// import 'package:flutter/material.dart';
// import 'package:toggle_switch/toggle_switch.dart';

// void main() => runApp(new MyApp());

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("iOT Smart Home", style: TextStyle(color: Colors.black)),
//           backgroundColor: Colors.white,
//         ),
//         body: TheGridView().build(),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title:
                Text("iOT Smart Home", style: TextStyle(color: Colors.black)),
            backgroundColor: Colors.white,
            bottom: const TabBar(
              tabs: [
                Tab(child: Text('All', style: TextStyle(color: Colors.black))),
                Tab(
                    child: Text('Bed Room',
                        style: TextStyle(color: Colors.black))),
                Tab(
                    child: Text('Living Room',
                        style: TextStyle(color: Colors.black))),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              TheGridAll().build(),
              TheGridBedRoom().build(),
              TheGridLivingRoom().build(),
            ],
          ),
        ),
      ),
    );
  }
}

class TheGridAll {
  Card makeGridCell(String name, IconData icon) {
    return Card(
      elevation: 5.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        verticalDirection: VerticalDirection.down,
        children: <Widget>[
          Center(
              child: Icon(
            icon,
            size: 60,
            color: Colors.blue,
          )),
          Center(child: Text(name)),
          Center(
            child: ToggleSwitch(
              minWidth: 40.0,
              minHeight: 30.0,
              initialLabelIndex: 1,
              cornerRadius: 20.0,
              activeFgColor: Colors.black,
              inactiveBgColor: Colors.white,
              inactiveFgColor: Colors.black,
              totalSwitches: 2,
              borderColor: [Colors.lightBlueAccent],
              labels: ['On', 'Off'],
              // ignore: prefer_const_literals_to_create_immutables
              activeBgColors: [
                [Colors.green],
                [Colors.red]
              ],
              onToggle: (onoff) {
                print('switched to: $onoff');
              },
            ),
          ),
        ],
      ),
    );
  }

  GridView build() {
    return GridView.count(
        primary: true,
        padding: EdgeInsets.all(1.0),
        crossAxisCount: 2,
        childAspectRatio: 1.0,
        mainAxisSpacing: 1.0,
        crossAxisSpacing: 1.0,
        children: <Widget>[
          makeGridCell("Lampu Bilik Tidur\n", Icons.bedroom_child),
          makeGridCell("TV \n", Icons.tv),
          makeGridCell("Iron \n", Icons.iron),
          makeGridCell("Kipas ruang tamu\n", Icons.air_sharp)
        ]);
  }
}

class TheGridBedRoom {
  Card makeGridCell(String name, IconData icon) {
    return Card(
      elevation: 5.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        verticalDirection: VerticalDirection.down,
        children: <Widget>[
          Center(
              child: Icon(
            icon,
            size: 60,
            color: Colors.blue,
          )),
          Center(child: Text(name)),
          Center(
            child: ToggleSwitch(
              minWidth: 40.0,
              minHeight: 30.0,
              initialLabelIndex: 1,
              cornerRadius: 20.0,
              activeFgColor: Colors.black,
              inactiveBgColor: Colors.white,
              inactiveFgColor: Colors.black,
              totalSwitches: 2,
              borderColor: [Colors.lightBlueAccent],
              labels: ['On', 'Off'],
              // ignore: prefer_const_literals_to_create_immutables
              activeBgColors: [
                [Colors.green],
                [Colors.red]
              ],
              onToggle: (onoff) {
                print('switched to: $onoff');
              },
            ),
          ),
        ],
      ),
    );
  }

  GridView build() {
    return GridView.count(
        primary: true,
        padding: EdgeInsets.all(1.0),
        crossAxisCount: 2,
        childAspectRatio: 1.0,
        mainAxisSpacing: 1.0,
        crossAxisSpacing: 1.0,
        children: <Widget>[
          makeGridCell("Lampu Bilik Tidur\n", Icons.bedroom_child),
          makeGridCell("Iron \n", Icons.iron),
        ]);
  }
}

class TheGridLivingRoom {
  Card makeGridCell(String name, IconData icon) {
    return Card(
      elevation: 5.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        verticalDirection: VerticalDirection.down,
        children: <Widget>[
          Center(
              child: Icon(
            icon,
            size: 60,
            color: Colors.blue,
          )),
          Center(child: Text(name)),
          Center(
            child: ToggleSwitch(
              minWidth: 40.0,
              minHeight: 30.0,
              initialLabelIndex: 1,
              cornerRadius: 20.0,
              activeFgColor: Colors.black,
              inactiveBgColor: Colors.white,
              inactiveFgColor: Colors.black,
              totalSwitches: 2,
              borderColor: [Colors.lightBlueAccent],
              labels: ['On', 'Off'],
              // ignore: prefer_const_literals_to_create_immutables
              activeBgColors: [
                [Colors.green],
                [Colors.red]
              ],
              onToggle: (onoff) {
                print('switched to: $onoff');
              },
            ),
          ),
        ],
      ),
    );
  }

  GridView build() {
    return GridView.count(
        primary: true,
        padding: EdgeInsets.all(1.0),
        crossAxisCount: 2,
        childAspectRatio: 1.0,
        mainAxisSpacing: 1.0,
        crossAxisSpacing: 1.0,
        children: <Widget>[
          makeGridCell("TV \n", Icons.tv),
          makeGridCell("Kipas ruang tamu\n", Icons.air_sharp),
        ]);
  }
}
