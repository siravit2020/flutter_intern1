import 'package:flutter/material.dart';
import 'package:flutter_intern1/riverpod_class.dart';
import 'page_navigation.dart';

class Page2 extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final inputChangeNotifier = watch(inputText);
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Consumer(builder: (context, watch, child) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                keyboardType: TextInputType.number,
                controller: inputChangeNotifier.controllerAge,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Age',
                ),
              ),
              SizedBox(
                height: 40,
              ),
              PageNavigation(),
            ],
          );
        }),
      ),
    );
  }
}
