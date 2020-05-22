import 'package:flutter/material.dart';
import 'package:logintestapp/model/saveUser.dart';
import 'package:logintestapp/screen/blank_page.dart';
import 'package:logintestapp/widgets/textFieldBox.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        onWillPop: () async => false,
        child: Consumer<SaveUser>(
          builder: (context, data, child) {
            String username = data.username;
            String password = data.password;
//            print(data.username);
            return Container(
              padding: EdgeInsets.only(right: 40, left: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  TextFieldBox(
                    initialValue: data.username,
                    obscureText: false,
                    onChange: (changeText) {
                      username = changeText;
                      print(username);
                    },
                    labelText: 'Username',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFieldBox(
                    initialValue: data.password,
                    obscureText: true,
                    labelText: 'Password',
                    onChange: (changeText) {
                      password = changeText;
                      print(password);
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 60,
                    child: FlatButton(
                      shape: CircleBorder(),
                      color: Colors.lightBlueAccent,
                      onPressed: () async {
                        if (username != null && password != null) {
                          String saveUser = await Provider.of<SaveUser>(context,
                                  listen: false)
                              .saveUser(username, password);
                          print(saveUser);
                          if (saveUser == 'Success') {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BlankPage()));
                          }
                        }
                      },
                      child: Text('Login'),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
