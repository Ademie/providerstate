import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state/horizontal.dart';
import 'package:provider_state/list_provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Consumer<ListProvider>(
        builder: ((context, numbersValue, child) => Scaffold(
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  numbersValue.add();
                },
                child: Icon(Icons.add),
              ),
              appBar: AppBar(),
              body: Center(
                child: Column(
                  children: [
                    Text(
                      numbersValue.numbers.last.toString(),
                      style: TextStyle(fontSize: 30),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Horizontal()));
                      },
                      icon: Icon(Icons.forward),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: numbersValue.numbers.length,
                        itemBuilder: (context, index) {
                          return Text(
                            numbersValue.numbers[index].toString(),
                            style: TextStyle(fontSize: 30),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
