import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
export 'package:flutter_riverpod/flutter_riverpod.dart';

class InputChangeNotifier extends ChangeNotifier {
  final controllerFirstname = TextEditingController();
  final controllerLastname = TextEditingController();
  final controllerAge = TextEditingController();

  void saveAndClear() {
    controllerFirstname.clear();
    controllerLastname.clear();
    controllerAge.clear();
    notifyListeners();
  }
}

final inputText = ChangeNotifierProvider<InputChangeNotifier>((ref) {
  return InputChangeNotifier();
});
