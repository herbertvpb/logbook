import 'package:flutter/material.dart';

import 'CustomBackButton.dart';

class AuthContainer extends StatelessWidget {
  final List<Widget> children;
  final bool scrollable;
  final bool showBackButton;

  AuthContainer({
    this.children,
    this.scrollable,
    this.showBackButton,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/background.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
          child: scrollable
              ? SingleChildScrollView(
                  child: Column(
                    children: showBackButton
                        ? [
                            CustomBackButton(),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 32, top: 8, right: 32, bottom: 16),
                              child: Column(
                                children: children,
                              ),
                            ),
                          ]
                        : [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 32, top: 8, right: 32, bottom: 16),
                              child: Column(
                                children: children,
                              ),
                            ),
                          ],
                  ),
                )
              : Column(
                  children: showBackButton
                      ? [
                          CustomBackButton(),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 32, top: 8, right: 32, bottom: 16),
                            child: Column(
                              children: children,
                            ),
                          ),
                        ]
                      : [
                          Padding(
                            padding: EdgeInsets.only(
                                left: 32, top: 8, right: 32, bottom: 16),
                            child: Column(
                              children: children,
                            ),
                          ),
                        ],
                )),
    );
  }
}
