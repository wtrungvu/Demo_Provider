import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_demo_provider/screen_model/log_in_screen_model.dart';
import 'package:flutter_demo_provider/screen_model/number_one_screen_model.dart';
import 'package:flutter_demo_provider/screen_model/number_two_screen_model.dart';
import 'package:flutter_demo_provider/screen_model/number_three_screen_model.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            builder: (context) => LogInScreenModel(),
          ),
          ChangeNotifierProvider(
            builder: (context) => NumberOneScreenModel(),
          ),
          ChangeNotifierProvider(
            builder: (context) => NumberTwoScreenModel(),
          ),
          ChangeNotifierProvider(
            builder: (context) => NumberThreeScreenModel(),
          ),
        ],
        child: LogInWidget(),
      ),
    );
  }
}

class LogInWidget extends StatefulWidget {
  @override
  _LogInWidgetState createState() => _LogInWidgetState();
}

class _LogInWidgetState extends State<LogInWidget> {
  @override
  Widget build(BuildContext context) {
    print("rebuild Widget Tree");
    var model = LogInScreenModel.of(context);
    var model_number_one = NumberOneScreenModel.of(context);
    var model_number_two = NumberTwoScreenModel.of(context);
    var model_number_three = NumberThreeScreenModel.of(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TxtCounter(),
          RaisedButton(
            child: Text("Click me"),
            onPressed: () {
              model.increment();
              model_number_one.increment();
              model_number_two.increment();
              model_number_three.increment();
            },
          )
        ],
      ),
    );
  }
}

class TxtCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var model = LogInScreenModel.of(context);
    var model_number_one = NumberOneScreenModel.of(context);
    var model_number_two = NumberTwoScreenModel.of(context);
    var model_number_three = NumberThreeScreenModel.of(context);

    return Container(
      child: Column(
        children: <Widget>[
          Text(
            "${model.count}",
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          Text(
            "${model_number_one.count}",
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          Text(
            "${model_number_two.count}",
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          Text(
            "${model_number_three.count}",
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
