import 'package:flutter/material.dart';
import 'package:flutter_intern1/riverpod_class.dart';

import 'page_navigation.dart';
class Page1 extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final inputChangeNotifier = watch(inputText);
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Consumer(
          builder: (context, watch, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Riverpod",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: inputChangeNotifier.controllerFirstname,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Firstname',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: inputChangeNotifier.controllerLastname,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Lastname',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                 SizedBox(height: 40,),
                PageNavigation(),
              ],
            );
          },
        ),
      ),
    );
  }
}