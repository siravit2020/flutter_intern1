import 'package:flutter/material.dart';
import 'package:flutter_intern1/riverpod_class.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'page1.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

final inputText = ChangeNotifierProvider<InputChangeNotifier>((ref) {
  return InputChangeNotifier();
});

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Page1(),
    );
  }
}


