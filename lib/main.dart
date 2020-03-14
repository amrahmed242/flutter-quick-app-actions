import 'package:flutter/material.dart';

import 'quick_actions_manager.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'QuickActions Demo', home: QuickActionsManager(child: Home()));
  }
}

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('Home')));
  }
}

class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('Login')));
  }
}

// https://blog.usejournal.com/create-and-manage-quick-actions-in-flutter-d59683367bf

// git init
// git add .
// git commit -m "first commit"
// git remote add origin git@github.com:amrahmed242/Flutter-Animated-keyboard.git
// git push -u origin master
