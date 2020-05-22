import 'package:flutter/material.dart';
import 'package:logintestapp/model/saveUser.dart';
import 'package:logintestapp/screen/startPage.dart';
import 'package:provider/provider.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SaveUser saveUser = SaveUser();
    return ChangeNotifierProvider<SaveUser>(
      create: (context) => saveUser,
      child: MaterialApp(
        title: 'LoginTest',
        home: StartPage(),
      ),
    );
  }
}
