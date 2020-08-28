import 'package:flutter/material.dart';

class DividerWithText extends StatelessWidget {
  final String text;

  DividerWithText({
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: Divider(
              thickness: 1,
              color: Colors.black38,
              endIndent: 5,
            ),
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 14,
              color: Colors.black38,
            ),
          ),
          Expanded(
            child: Divider(
              thickness: 1,
              color: Colors.black38,
              indent: 5,
            ),
          ),
        ],
      ),
    );
  }
}
