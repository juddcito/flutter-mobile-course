import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {

    String clickString = (clickCounter == 1) ? 'Click' : 'Clicks';
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('$clickCounter',
              style:
                  const TextStyle(fontSize: 160, fontWeight: FontWeight.w100)),
          Text('$clickString', style: TextStyle(fontSize: 25))
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          clickCounter++;
          setState(() {});
        },
        child: Icon(Icons.plus_one),
      ),
    );
  }
}
