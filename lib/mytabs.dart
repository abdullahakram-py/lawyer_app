import 'package:flutter/material.dart';
import 'package:lawyer_app/signup.dart';
import 'package:lawyer_app/verifyaccount.dart';

class MyTabs extends StatefulWidget {
  const new({super.key});

  @override
  State<MyTabs> createState() => _MyTabsState();
}

class _MyTabsState extends State<MyTabs> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs: [
            Tab(
              child: Text("Home"),
            ),
            Tab(
              child: Text("Home2"),
            ),
          ]),
        ),
        body: TabBarView(children: [
          Verifyaccount(),
          Signup()
        ]),
      ),
    );
  }
}