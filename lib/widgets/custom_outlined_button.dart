
import 'package:flutter/material.dart';
import 'package:third_project_107/utils/app_color.dart';

class CustomOutlinedButton extends StatelessWidget {
  final void Function()? onPressed;
  final List<Widget> children;
  const CustomOutlinedButton({
    super.key,
    this.onPressed,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(11),
          side: BorderSide(
            color: AppColor.oilColor.withOpacity(0.5),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: children,
      ),
    );
  }
}
