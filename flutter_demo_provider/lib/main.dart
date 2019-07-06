import 'package:flutter/material.dart';
import 'package:flutter_demo_provider/screen/log_in_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo Provider',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => LoginScreen(),
      },
    );
  }
}
