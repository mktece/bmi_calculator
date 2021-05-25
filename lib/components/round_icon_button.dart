import 'file:///D:/flutterapptest/bmi_calculator_app/lib/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  RoundIconButton({ this.icon,  this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      constraints: kRoundIconButtonConstraints,
      shape: CircleBorder(),
      fillColor: kRoundIconButtonColor,
    );
  }
}
