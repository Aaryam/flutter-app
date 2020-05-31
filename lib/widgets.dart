import 'package:flutter/material.dart';
import 'classes.dart';

class SubmitButton extends StatelessWidget {
  final text;
  final function;
  const SubmitButton({Key key, this.text, this.function}): super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 7 * SizeConfig.blockSizeVertical,
      width: 70 * SizeConfig.blockSizeHorizontal,
      child: RaisedButton(
        color: ColorList.primaryColor,
        child: Text(
          '$text',
          style: TextStyle(
            color: ColorList.secondaryColor,
            fontSize: 3.5 * SizeConfig.blockSizeHorizontal,
          ),
        ),
        onPressed: function,
      ),
    );
  }
}

class TitlePage extends StatelessWidget {
  final text;
  const TitlePage({Key key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: SizeConfig.blockSizeHorizontal * 5 + SizeConfig.blockSizeVertical * 5,
      ),
    );
  }
}
