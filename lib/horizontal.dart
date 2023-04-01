import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state/list_provider.dart';

class Horizontal extends StatefulWidget {
  const Horizontal({
    super.key,
  });

  @override
  State<Horizontal> createState() => _HorizontalState();
}

class _HorizontalState extends State<Horizontal> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ListProvider>(
      builder: ((context, numbersValue, child) => Scaffold(
            appBar: AppBar(),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                numbersValue.add();
              },
              child: Icon(Icons.add),
            ),
            body: Center(
              child: Column(
                children: [
                  Text(numbersValue.numbers.last.toString()),
                  Expanded(
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: numbersValue.numbers.length,
                          itemBuilder: (context, index) {
                            return Text(numbersValue.numbers[index].toString());
                          }))
                ],
              ),
            ),
          )),
    );
  }
}
