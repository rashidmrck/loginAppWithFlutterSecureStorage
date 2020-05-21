import 'package:flutter/material.dart';
import 'package:logintestapp/model/saveUser.dart';
import 'package:provider/provider.dart';

class BlankPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Text(Provider.of<SaveUser>(context).username),
      ),
    );
  }
}
