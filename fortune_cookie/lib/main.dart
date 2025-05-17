import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fortune Cookie Demo',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _currentFortune = "You will have a great day!";

  final _fortuneList = [
    "You will find a new friend.",
    "A truly rich life contains love and happiness.",
    "Accept something that you cannot change.",
    "Adventure can be real happiness.",
    "Good news will come to you from far away.",
    "You will find success in your endeavors.",
    "A thrilling time is in your near future.",
    "Your hard work will pay off soon.",
    "Advice is like kissing: it costs nothing and is a pleasant thing to do.",
    "Advice, when most needed, is least heeded.",
  ];

  void _randomFortune() {
    var random = Random();
    int fortune = random.nextInt(_fortuneList.length);
    setState(() {
      _currentFortune = _fortuneList[fortune];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/fortune_cookie_illustration.jpg',
              width: 350, 
              height: 350, 
              fit: BoxFit.cover),
            Card(
              color: Color(0xfffbf4e4),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  _currentFortune,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff724b33),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: _randomFortune, 
                child: Text("Get Fortune", style: TextStyle(color: Colors.white,))
            ),
          ],
        ),
      ),
    );
  }
}
