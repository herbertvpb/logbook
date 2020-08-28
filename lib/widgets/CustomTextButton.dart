import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  final String text;
  final Function onTap;

  CustomTextButton({
    this.mainAxisAlignment,
    this.text,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: mainAxisAlignment,
        children: [
          GestureDetector(
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onTap: onTap,
          ),
        ],
      ),
    );
  }
}
