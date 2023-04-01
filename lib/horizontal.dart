import 'package:flutter/material.dart';

class Horizontal extends StatefulWidget {
  final List<int> numbers;
  const Horizontal({super.key, required this.numbers});

  @override
  State<Horizontal> createState() => _HorizontalState();
}

class _HorizontalState extends State<Horizontal> {
  @override
  Widget build(BuildContext context) {
    int last = widget.numbers.last;
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            widget.numbers.add(last + 1);
          });
        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          children: [
            Text(last.toString()),
            Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: widget.numbers.length,
                    itemBuilder: (context, index) {
                      return Text(widget.numbers[index].toString());
                    }))
          ],
        ),
      ),
    );
  }
}
