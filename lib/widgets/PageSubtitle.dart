import 'package:flutter/material.dart';

class PageSubtitle extends StatelessWidget {
  final String text;

  PageSubtitle({
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(top: 8, bottom: 16),
        child: Text(
          text,
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 14,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
