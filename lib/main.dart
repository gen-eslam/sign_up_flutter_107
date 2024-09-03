import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:third_project_107/view/sign_up_screeen.dart';
import 'package:third_project_107/view/sign_up_screen_web.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LayoutBuilder(
        builder: (context, constraints) {
          log(constraints.maxWidth.toString());
          if (constraints.maxWidth <= 600) {
            return const SignUpScreen();
          } else {
            return const SignUpScreenWeb();
          }
        },
      ),
    );
  }
}
