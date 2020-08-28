import 'package:flutter/material.dart';
import 'package:logbook/widgets/AuthContainer.dart';
import 'package:logbook/widgets/CustomRaisedButton.dart';
import 'package:logbook/widgets/CustomTextField.dart';
import 'package:logbook/widgets/PageSubtitle.dart';
import 'package:logbook/widgets/PageTitle.dart';

class PasswordRecoveryCode extends StatefulWidget {
  @override
  _PasswordRecoveryCodeState createState() => _PasswordRecoveryCodeState();
}

class _PasswordRecoveryCodeState extends State<PasswordRecoveryCode> {
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
                "Confirme o código enviado no seu email, para que possamos prosseguir com a recuperação.",
          ),
          CustomTextField(
            autofocus: true,
            obscureText: false,
            keyboardType: TextInputType.number,
            hintText: "Código",
          ),
          CustomRaisedButton(
            paddingHorizontal: 48,
            text: "CONTINUAR",
            onPressed: () {
              Navigator.pushNamed(context, '/password_change');
            },
          ),
        ],
      ),
    );
  }
}
