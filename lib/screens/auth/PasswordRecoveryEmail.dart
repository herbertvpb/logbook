import 'package:flutter/material.dart';
import 'package:logbook/widgets/AuthContainer.dart';
import 'package:logbook/widgets/CustomRaisedButton.dart';
import 'package:logbook/widgets/CustomTextField.dart';
import 'package:logbook/widgets/PageSubtitle.dart';
import 'package:logbook/widgets/PageTitle.dart';

class PasswordRecoveryEmail extends StatefulWidget {
  @override
  _PasswordRecoveryEmailState createState() => _PasswordRecoveryEmailState();
}

class _PasswordRecoveryEmailState extends State<PasswordRecoveryEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthContainer(
        scrollable: false,
        showBackButton: true,
        children: [
          PageTitle(
            text: "Esqueceu sua senha?",
          ),
          PageSubtitle(
            text:
                "Não se preocupe, o processo de recuperação é simples e rápido, siga os passos abaixo",
          ),
          PageSubtitle(
            text:
                "Confirme o seu email para que possamos te enviar o código de recuperação.",
          ),
          CustomTextField(
            autofocus: true,
            obscureText: false,
            keyboardType: TextInputType.emailAddress,
            hintText: "Email",
          ),
          CustomRaisedButton(
            paddingHorizontal: 48,
            text: "ENVIAR",
            onPressed: () {
              Navigator.pushNamed(context, '/password_code');
            },
          ),
        ],
      ),
    );
  }
}
