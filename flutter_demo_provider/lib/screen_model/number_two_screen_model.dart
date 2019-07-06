import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NumberTwoScreenModel with ChangeNotifier {
  int count = 2;

  static NumberTwoScreenModel of(BuildContext context) {
    return Provider.of<NumberTwoScreenModel>(context);
  }

  increment() {
    count++;
    print("NumberTwoScreenModel - count = " + count.toString());
    notifyListeners(); //TODO: Nói cho màn hình ui cần phải đc cập nhật lại ui mới
  }
}
