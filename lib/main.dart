import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Example'),
        ),
        body: Center(
          child: Builder(builder: (context) {
            return Column(
              children: [
                const Text('Hello world'),
                const SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () {
                      print('Click');
                    },
                    child: const Text('A button')),
                const PaddedText(),
                const CounterWidget()
              ],
            );
          }),
        ),
      ),
    );
  }
}

class PaddedText extends StatelessWidget {
  const PaddedText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: const Text('Hello, World!'),
    );
  }
}

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  State<StatefulWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text('$_counter'),
      ElevatedButton(
          onPressed: () {
            _incrementCounter();
          },
          child: Text('Increment Button single widget')),
      ElevatedButton(
          onPressed: () {
            _resetCounter();
          },
          child: Text('reset'))
    ]);
  }
}

class MyCounter extends StatelessWidget {
  final int count;

  const MyCounter({super.key, required this.count});

  @override
  Widget build(BuildContext context) {
    return Text('$count');
  }
}
