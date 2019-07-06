import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NumberOneScreenModel with ChangeNotifier {
  int count = 1;

  static NumberOneScreenModel of(BuildContext context) {
    return Provider.of<NumberOneScreenModel>(context);
  }

  increment() {
    count++;
    print("NumberOneScreenModel - count = " + count.toString());
    notifyListeners(); //TODO: Nói cho màn hình ui cần phải đc cập nhật lại ui mới
  }
}
