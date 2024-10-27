import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Card Properties Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CardExampleScreen(),
    );
  }
}

class CardExampleScreen extends StatefulWidget {
  const CardExampleScreen({super.key});
  @override
  CardCreation createState() => CardCreation();
}

class CardCreation extends State<CardExampleScreen> {
  int counter = 0;
  final showText = [
    'A god is my favourite',
    'Batch file is not found',
    'Cat walk on the road',
    'Dog must be a value',
  ];
//  void increment() {
//     setState(() {
//       counter++;
//     });
//   }

//  static void decrement() {
//     setState(() {
//       counter--;
//     });
//   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Properties Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          color: Colors.white,
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          margin: const EdgeInsets.all(16),
          clipBehavior: Clip.antiAlias,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const Text(
                  'Youre Fortune',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  showText[counter % showText.length],
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 16),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        counter++;
                      });
                    },
                    child: const Icon(Icons.add),
                  ),
                  const SizedBox(width: 15),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        counter--;
                      });
                    },
                    child: const Icon(Icons.remove),
                  ),
                ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}
