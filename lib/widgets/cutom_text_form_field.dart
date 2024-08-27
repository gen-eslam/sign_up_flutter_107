import 'package:flutter/material.dart';
import 'package:third_project_107/utils/app_color.dart';

class CustomTextFormField extends StatefulWidget {
  final IconData? icon;
  final String? hintText;
  final bool isPassword;
  const CustomTextFormField(
      {super.key, this.icon, this.hintText, this.isPassword = false});

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.isPassword == true ? isObscure : false,
      decoration: InputDecoration(
        filled: true,
        hintText: widget.hintText,
        prefixIcon:
            Icon(widget.icon, color: AppColor.oilColor.withOpacity(0.5)),
        suffixIcon: widget.isPassword
            ? IconButton(
                onPressed: () {
                  setState(() {
                    isObscure = !isObscure;
                  });
                },
                icon: Icon(
                  isObscure
                      ? Icons.remove_red_eye_rounded
                      : Icons.remove_red_eye_outlined,
                  color: AppColor.oilColor.withOpacity(0.5),
                ),
              )
            : null,
        fillColor: AppColor.whiteColor,
        border: border,
        errorBorder: border,
        enabledBorder: border,
        focusedBorder: border,
        disabledBorder: border,
      ),
    );
  }

  OutlineInputBorder border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: BorderSide(
      color: AppColor.oilColor.withOpacity(0.5),
      width: 1,
    ),
  );
}
