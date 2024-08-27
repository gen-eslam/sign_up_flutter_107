import 'package:flutter/material.dart';
import 'package:third_project_107/widgets/sign_up_body.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text("skip"),
          ),
        ],
      ),
      body: const SignUpBody(),
    );
  }
}
