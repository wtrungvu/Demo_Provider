import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_demo_provider/screen_model/log_in_screen_model.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: ChangeNotifierProvider<LogInScreenModel>(
        builder: (_) => LogInScreenModel(),
        child: new LogInWidget(),
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

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TxtCounter(),
          RaisedButton(
            child: Text("Click me"),
            onPressed: () {
              model.increment();
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
    return Consumer<LogInScreenModel>(builder: (context, model, child) {
      return Text(
        "${model.count}",
        style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
      );
    });
  }
}
