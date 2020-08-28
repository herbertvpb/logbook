import 'package:flutter/material.dart';
import 'package:logbook/widgets/AuthContainer.dart';
import 'package:logbook/widgets/CustomRaisedButton.dart';
import 'package:logbook/widgets/CustomTextButton.dart';
import 'package:logbook/widgets/CustomTextField.dart';
import 'package:logbook/widgets/DividerWithText.dart';
import 'package:logbook/widgets/LoginSocialButton.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthContainer(
        scrollable: true,
        showBackButton: false,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 8, bottom: 24),
            child: Image.asset(
              "assets/images/logo.png",
              width: 124,
              height: 124,
            ),
          ),
          CustomTextField(
            autofocus: true,
            obscureText: false,
            keyboardType: TextInputType.emailAddress,
            hintText: "Email",
          ),
          CustomTextField(
            autofocus: false,
            obscureText: true,
            keyboardType: TextInputType.visiblePassword,
            hintText: "Senha",
          ),
          CustomTextButton(
            mainAxisAlignment: MainAxisAlignment.end,
            text: "Esqueceu sua senha?",
            onTap: () {
              Navigator.pushNamed(context, '/password_email');
            },
          ),
          CustomRaisedButton(
            paddingHorizontal: 72,
            text: "ENTRAR",
            onPressed: () {
              Navigator.pushNamed(context, '/dashboard');
            },
          ),
          DividerWithText(text: "ou"),
          LoginSocialButton(
            imagePath: "assets/images/google.png",
            size: 35,
            text: "Acessar com o Google",
            onPressed: () {},
          ),
          LoginSocialButton(
            imagePath: "assets/images/facebook.png",
            size: 35,
            text: "Acessar com o Facebook",
            onPressed: () {},
          ),
          Padding(
            padding: EdgeInsets.only(top: 32),
            child: CustomTextButton(
              mainAxisAlignment: MainAxisAlignment.center,
              text: "Não é cadastrado? Cadastre-se aqui.",
              onTap: () {
                Navigator.pushNamed(context, '/signup');
              },
            ),
          )
        ],
      ),
    );
  }
}
