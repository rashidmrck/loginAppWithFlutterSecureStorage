import 'package:flutter/material.dart';
import 'package:logintestapp/model/saveUser.dart';
import 'package:logintestapp/screen/login.dart';
import 'package:provider/provider.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<SaveUser>(
      create: (context) => SaveUser(),
      child: MaterialApp(
        title: 'LoginTest',
        home: LoginScreen(),
      ),
    );
  }
}
