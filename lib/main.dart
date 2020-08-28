import 'package:flutter/material.dart';
import 'package:logbook/Routes.dart';
import 'package:logbook/screens/auth/SignIn.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/",
    home: SignIn(),
    theme: ThemeData(
      primaryColor: Color(0xff17C3EE),
      accentColor: Color(0xff17C3EE),
    ),
    onGenerateRoute: Routes.generateRoutes,
    debugShowCheckedModeBanner: false,
  ));
}
