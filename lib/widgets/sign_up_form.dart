import 'package:flutter/material.dart';
import 'package:third_project_107/widgets/custom_elevated_button.dart';
import 'package:third_project_107/widgets/custom_outlined_button.dart';
import 'package:third_project_107/widgets/cutom_text_form_field.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CustomTextFormField(
          icon: Icons.email,
          hintText: "Email",
        ),
        const SizedBox(
          height: 23,
        ),
        const CustomTextFormField(
          icon: Icons.password,
          hintText: "Password",
          isPassword: true,
        ),
        const SizedBox(
          height: 23,
        ),
        CustomElevatedButton(
          title: "Sign Up",
          onPressed: () {},
        ),
        const SizedBox(
          height: 15,
        ),
        CustomOutlinedButton(
          onPressed: () {},
          children: const [
            Icon(Icons.abc_outlined),
            SizedBox(
              width: 20,
            ),
            Text("Sign Up With Goolgle")
          ],
        ),
      ],
    );
  }
}
