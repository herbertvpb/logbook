import 'package:flutter/material.dart';

class CustomRaisedButton extends StatelessWidget {
  final double paddingHorizontal;
  final String text;
  final Function onPressed;

  CustomRaisedButton({
    this.paddingHorizontal,
    this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(top: 8, bottom: 16),
        child: RaisedButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
          color: Colors.white,
          padding: EdgeInsets.only(
              left: paddingHorizontal,
              top: 8,
              right: paddingHorizontal,
              bottom: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
