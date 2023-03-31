import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  List<int> numbers = [1, 2, 3, 4];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            int last = numbers.last;
            setState(() {
              numbers.add(last + 1);
            });
          },
          child: Icon(Icons.add),
        ),
        appBar: AppBar(),
        body: Center(
          child: Column(
            children: [
              Text(
                numbers.last.toString(),
                style: TextStyle(fontSize: 30),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: numbers.length,
                  itemBuilder: (context, index) {
                    return Text(
                      numbers[index].toString(),
                      style: TextStyle(fontSize: 30),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
