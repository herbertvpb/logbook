import 'package:flutter/material.dart';
import 'package:logbook/widgets/AuthContainer.dart';
import 'package:logbook/widgets/CustomRaisedButton.dart';
import 'package:logbook/widgets/CustomTextField.dart';
import 'package:logbook/widgets/PageSubtitle.dart';
import 'package:logbook/widgets/PageTitle.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthContainer(
        scrollable: true,
        showBackButton: true,
        children: [
          PageTitle(
            text: "Crie uma nova conta",
          ),
          PageSubtitle(
            text:
                "Informe os dados solicitados para se registrar gratuitamente no sistema",
          ),
          CustomTextField(
            autofocus: true,
            obscureText: false,
            keyboardType: TextInputType.name,
            hintText: "Nome",
          ),
          CustomTextField(
            autofocus: false,
            obscureText: false,
            keyboardType: TextInputType.number,
            hintText: "CPF",
          ),
          CustomTextField(
            autofocus: false,
            obscureText: false,
            keyboardType: TextInputType.number,
            hintText: "Código ANAC",
          ),
          CustomTextField(
            autofocus: false,
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
          CustomTextField(
            autofocus: false,
            obscureText: true,
            keyboardType: TextInputType.visiblePassword,
            hintText: "Confirme sua senha",
          ),
          Padding(
            padding: EdgeInsets.only(left: 32, top: 8, right: 32, bottom: 8),
            child: Text(
              'Ao clicar em "Registrar", você concorda com os nossos Termos & Condições',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
              ),
            ),
          ),
          CustomRaisedButton(
            paddingHorizontal: 48,
            text: "REGISTRAR",
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
