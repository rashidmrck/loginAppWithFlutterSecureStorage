import 'package:flutter/material.dart';

class TextFieldBox extends StatelessWidget {
  final String labelText;
  final String initialValue;
  final Function onChange;
  final bool obscureText;

  TextFieldBox(
      {@required this.labelText,
      @required this.onChange,
      this.initialValue,
      this.obscureText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(
          color: Colors.lightBlue,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.lightBlueAccent,
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.lightBlueAccent,
            width: 4,
          ),
        ),
      ),
      onChanged: onChange,
    );
  }
}
