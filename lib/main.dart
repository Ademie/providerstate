import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state/home.dart';
import 'package:provider_state/list_provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // register your provider
        ChangeNotifierProvider(create: (context) => ListProvider())
      ],
      child: MaterialApp(
        home: Home(),
      ),
    );
  }
}
