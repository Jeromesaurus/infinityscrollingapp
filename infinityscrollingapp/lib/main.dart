import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Color randomColor() {
  final random = Random();
  final int red = random.nextInt(256); // 0-255
  final int green = random.nextInt(256);
  final int blue = random.nextInt(256);
  return Color.fromARGB(255, red, green, blue); // With full opacity (255)
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
          backgroundColor: Colors.blue,
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              print('Pressed!');
            }),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
            ),
          ],
        ),
        drawer: Drawer(
          child: Text('Yo!'),
        ),
        body: ListView.builder(
          itemBuilder: (_, index) {
            return Container(
              color: randomColor(),
              width: 500,
              height: 500,
            );
          },
        ),
      ),
    );
  }
}
