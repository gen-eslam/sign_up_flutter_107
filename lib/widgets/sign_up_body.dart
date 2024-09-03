import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:third_project_107/utils/app_color.dart';
import 'package:third_project_107/widgets/custom_elevated_button.dart';
import 'package:third_project_107/widgets/custom_outlined_button.dart';
import 'package:third_project_107/widgets/cutom_text_form_field.dart';
import 'package:third_project_107/widgets/image_with_title.dart';
import 'package:third_project_107/widgets/sign_up_form.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsetsDirectional.all(23),
      child: Column(
        children: [
          const ImageWithTitle(),
          const SizedBox(
            height: 23,
          ),
          const CustomTextFormField(
            icon: Icons.person_2_outlined,
            hintText: "Full Name",
          ),
          const SizedBox(
            height: 23,
          ),
          const SignUpForm(),
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
          RichText(
            text: TextSpan(
              text: 'Already have an account? ',
              style: DefaultTextStyle.of(context).style,
              children: [
                TextSpan(
                    text: 'Log In',
                    style: TextStyle(color: AppColor.greenColor),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => print('Tap Here onTap')),
              ],
            ),
          )
        ],
      ),
    );
  }
}
