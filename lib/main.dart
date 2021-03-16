import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color _backgroundColor = Colors.white;
  Text _text = Text(
    'Hey There',
    style: TextStyle(
      fontSize: 35,
      shadows: <Shadow>[
        Shadow(
          offset: Offset(2, 1),
          color: Colors.white,
        ),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      appBar: AppBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(25))),
        centerTitle: true,
        backgroundColor: Colors.orange[600],
        title: Text(
          'Test App',
        ),
      ),
      body: Stack(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                final random = Random();
                _backgroundColor = Color.fromRGBO(random.nextInt(350),
                    random.nextInt(350), random.nextInt(350), 1);
              });
            },
          ),
          Center(
            child: _text,
          ),
        ],
      ),
    );
  }
}
