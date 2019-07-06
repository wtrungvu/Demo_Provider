import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LogInScreenModel with ChangeNotifier {
  int count = 0;

  static LogInScreenModel of(BuildContext context) {
    return Provider.of<LogInScreenModel>(context);
  }

  increment() {
    count++;
    print("LogInScreenModel - count = " + count.toString());
    notifyListeners(); //TODO: Nói cho màn hình ui cần phải đc cập nhật lại ui mới
  }
}
