import 'package:flutter/material.dart';
import 'screens/http_screen.dart';
import 'screens/chopper_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Networking with Flutter',
      home: Scaffold(
        appBar: AppBar(title: Text('Networking Example')),
        body: Column(
          children: [
            ElevatedButton(
              child: Text('HTTP Example'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => HttpScreen()));
              },
            ),
            ElevatedButton(
              child: Text('Chopper Example'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => ChopperScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
