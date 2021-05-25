import 'package:flutter/material.dart';
import '../utils/constants.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget child;
  final VoidCallback onTap;

  ReusableCard({ this.color, this.child, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: child,
        margin: EdgeInsets.all(kCardMargin),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(kCardBorderRadius),
          ),
          color: color,
        ),
      ),
    );
  }
}
