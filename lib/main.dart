import 'package:flutter/material.dart';

void main() {
  runApp(const MyLayout());
}

class MyLayout extends StatelessWidget {
  const MyLayout({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Layout Learning',
      home: MyLayoutScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyLayoutScreen extends StatelessWidget {
  const MyLayoutScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Layout screen"),
        ),
        body: Center(
            child: Container(
                padding: const EdgeInsets.all(16.0),
                child: ListView(
                  scrollDirection: Axis.vertical,
                  clipBehavior: Clip.hardEdge,
                  children: [
                    const SizedBox(height: 10),
                    Container(
                        height: 200,
                        child: Image.network(
                            'https://cdn.pixabay.com/photo/2014/09/24/14/29/macbook-459196_1280.jpg',
                            width: 100,
                            height: 200,
                            fit: BoxFit.fill)),
                    const SizedBox(height: 10),
                    Container(
                        height: 200,
                        width: 500,
                        child: Image.asset('images/lake.jpg',
                            width: 200, height: 200, fit: BoxFit.fill)),
                    const SizedBox(height: 10),
                    Container(
                        height: 200,
                        child: Image.network(
                            'https://cdn.pixabay.com/photo/2014/09/24/14/29/macbook-459196_1280.jpg',
                            width: 100,
                            height: 200,
                            fit: BoxFit.fill)),
                  ],
                ))));
  }
}
