import 'package:flutter/material.dart';
import 'package:mobilebanking/ui/widgets/PageBackground.dart';

class MyAccountsScreen extends StatefulWidget {
  @override
  _MyAccountsScreenState createState() => _MyAccountsScreenState();
}

class _MyAccountsScreenState extends State<MyAccountsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('My Accounts'),
          centerTitle: true,
          elevation: 0,
        ),
        body: PageBackground(
          child: Container(
            color: Colors.white,
            height: 500,
            width: double.infinity,
            child: Text('Account'),
          ),
        ),
      ),
    );
  }
}
