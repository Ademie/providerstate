import 'package:flutter/material.dart';
import 'package:provider/horizontal.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
              IconButton(
                onPressed: () {
                  
                  Navigator.push(
                    context,
                      MaterialPageRoute(builder: (context) => Horizontal()));
                },
                icon: Icon(Icons.forward),
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
