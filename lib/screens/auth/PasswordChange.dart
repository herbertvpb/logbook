import 'package:flutter/material.dart';
import 'package:logbook/widgets/AuthContainer.dart';
import 'package:logbook/widgets/CustomRaisedButton.dart';
import 'package:logbook/widgets/CustomTextField.dart';
import 'package:logbook/widgets/PageSubtitle.dart';
import 'package:logbook/widgets/PageTitle.dart';

class PasswordChange extends StatefulWidget {
  @override
  _PasswordChangeState createState() => _PasswordChangeState();
}

class _PasswordChangeState extends State<PasswordChange> {
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
            text: "Escolha a sua nova senha",
          ),
          CustomTextField(
            autofocus: false,
            obscureText: true,
            keyboardType: TextInputType.visiblePassword,
            hintText: "Senha",
          ),
          CustomTextField(
            autofocus: false,
            obscureText: true,
            keyboardType: TextInputType.visiblePassword,
            hintText: "Confirme sua senha",
          ),
          CustomRaisedButton(
            paddingHorizontal: 48,
            text: "ALTERAR",
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
          ),
        ],
      ),
    );
  }
}
