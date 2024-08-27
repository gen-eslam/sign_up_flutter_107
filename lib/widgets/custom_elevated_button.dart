import 'package:flutter/material.dart';
import 'package:third_project_107/utils/app_color.dart';

class CustomElevatedButton extends StatelessWidget {
  final String title;
  final void Function()? onPressed;
  const CustomElevatedButton(
      {super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                12,
              ),
            ),
            backgroundColor: AppColor.greenColor,
            foregroundColor: AppColor.whiteColor),
        onPressed: onPressed,
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
