import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome to Account Page"),

      ),
      body: SizedBox(
        child: Container(
          color: Colors.blue,
        ),
      ),
    );
  }
}
