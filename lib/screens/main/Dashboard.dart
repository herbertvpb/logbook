import 'package:flutter/material.dart';
import 'package:logbook/widgets/MainContainer.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aviãozin"),
        backgroundColor: Colors.blue,
      ),
      body: MainContainer(),
    );
  }
}
