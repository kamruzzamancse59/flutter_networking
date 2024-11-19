import 'package:flutter/material.dart';
import 'package:flutter_networking/screens/http_screen.dart';
import 'package:flutter_networking/screens/chopper_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Networking with Flutter',
      home: HomeScreen(), // Wrap the Scaffold in a separate widget
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Networking Example'),
      ),
      body: Center( // Center the buttons in the screen
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              child: Text('HTTP Example'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HttpScreen()),
                );
              },
            ),
            SizedBox(height: 20), // Add space between buttons
            ElevatedButton(
              child: Text('Chopper Example'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChopperScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
