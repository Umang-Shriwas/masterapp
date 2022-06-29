import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgetPasswardScreen extends StatefulWidget {
  const ForgetPasswardScreen({Key? key}) : super(key: key);

  @override
  State<ForgetPasswardScreen> createState() => _ForgetPasswardScreenState();
}

class _ForgetPasswardScreenState extends State<ForgetPasswardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Text(
            "Forget Password",
            style: TextStyle(fontSize: 30),
          ),
        ));
  }
}
