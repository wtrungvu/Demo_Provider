import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NumberThreeScreenModel with ChangeNotifier {
  int count = 3;

  static NumberThreeScreenModel of(BuildContext context) {
    return Provider.of<NumberThreeScreenModel>(context);
  }

  increment() {
    count++;
    print("NumberThreeScreenModel - count = " + count.toString());
    notifyListeners(); //TODO: Nói cho màn hình ui cần phải đc cập nhật lại ui mới
  }
}
