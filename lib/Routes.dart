import 'package:flutter/material.dart';
import 'package:logbook/screens/auth/PasswordChange.dart';
import 'package:logbook/screens/auth/PasswordRecoveryCode.dart';
import 'package:logbook/screens/auth/PasswordRecoveryEmail.dart';
import 'package:logbook/screens/auth/SignIn.dart';
import 'package:logbook/screens/auth/SignUp.dart';
import 'package:logbook/screens/main/Dashboard.dart';

class Routes {
  // ignore: missing_return
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (_) => SignIn(),
        );
      case "/signup":
        return MaterialPageRoute(
          builder: (_) => SignUp(),
        );
        break;
      case "/password_email":
        return MaterialPageRoute(
          builder: (_) => PasswordRecoveryEmail(),
        );
        break;
      case "/password_code":
        return MaterialPageRoute(
          builder: (_) => PasswordRecoveryCode(),
        );
        break;
      case "/password_change":
        return MaterialPageRoute(
          builder: (_) => PasswordChange(),
        );
        break;
      case "/dashboard":
        return MaterialPageRoute(
          builder: (_) => Dashboard(),
        );
        break;
      default:
        _routeError();
    }
  }

  static Route<dynamic> _routeError() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Page not found"),
        ),
        body: Center(
          child: Text("Page not found"),
        ),
      );
    });
  }
}
