import 'dart:async';

import 'package:flutter/material.dart';
import 'package:logintestapp/screen/login.dart';

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      // 5s over, navigate to a new page
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
    );
  }
}
