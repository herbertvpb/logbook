import 'package:flutter/material.dart';

class LoginSocialButton extends StatelessWidget {
  final String imagePath;
  final double size;
  final String text;
  final Function onPressed;

  LoginSocialButton({
    this.imagePath,
    this.size,
    this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(top: 16),
        child: RaisedButton(
          onPressed: onPressed,
          padding: EdgeInsets.all(8),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 8),
                child: Image.asset(
                  imagePath,
                  width: size,
                  height: size,
                ),
              ),
              Text(
                text,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          color: Color.fromRGBO(0, 0, 0, 0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
