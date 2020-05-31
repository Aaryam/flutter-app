import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:socialapp/classes.dart';

import '../widgets.dart';

class Mainpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TitlePage(text: 'Login'),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 100),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SingleChildScrollView(
                child:Container(
                width: 65 * SizeConfig.blockSizeHorizontal,
                child: TextField(
                  decoration: InputDecoration(labelText: 'Email',),
                  style: TextStyle(
                    color: ColorList.primaryColor,
                  ),
                ),
              ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 65 * SizeConfig.blockSizeHorizontal,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(labelText: 'Password'),
                  style: TextStyle(
                    color: ColorList.primaryColor,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 50),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(children: <Widget>[
                SubmitButton(text: 'Login', function: () {}),
                Padding(
                  padding: EdgeInsets.only(bottom: 15),
                ),
                SubmitButton(text: 'Register', function: () {}),
              ]),
            ],
          ),
        ],
      ),
    );
  }
}
