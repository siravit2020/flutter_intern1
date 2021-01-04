import 'package:flutter/material.dart';
import 'package:flutter_intern1/riverpod_class.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'page_navigation.dart';

class Page3 extends ConsumerWidget {
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      (inputChangeNotifier.controllerFirstname.text != "")
                          ? Text("Firstname : ")
                          : SizedBox(),
                      (inputChangeNotifier.controllerLastname.text != "")
                          ? Text("Lastname : ")
                          : SizedBox(),
                      (inputChangeNotifier.controllerAge.text != "")
                          ? Text("Age : ")
                          : SizedBox(),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      (inputChangeNotifier.controllerFirstname.text != "")
                          ? Text(inputChangeNotifier.controllerFirstname.text)
                          : SizedBox(),
                      (inputChangeNotifier.controllerLastname.text != "")
                          ? Text(inputChangeNotifier.controllerLastname.text)
                          : SizedBox(),
                      (inputChangeNotifier.controllerAge.text != "")
                          ? Text(inputChangeNotifier.controllerAge.text)
                          : SizedBox(),
                    ],
                  ),
                ],
              ),
              (inputChangeNotifier.controllerFirstname.text != "") ||
                      (inputChangeNotifier.controllerLastname.text != "") ||
                      (inputChangeNotifier.controllerAge.text != "")
                  ? FlatButton(
                      onPressed: () {
                        print(inputChangeNotifier.controllerFirstname.text);
                        print(inputChangeNotifier.controllerLastname.text);
                        print(inputChangeNotifier.controllerAge.text);
                        inputChangeNotifier.saveAndClear();
                      },
                      child: Text(
                        "Save",
                      ),
                    )
                  : Text(
                      "Empty",
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
