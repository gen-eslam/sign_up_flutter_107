import 'package:flutter/material.dart';
import 'package:third_project_107/utils/app_color.dart';
import 'package:third_project_107/widgets/logo.dart';

class ImageWithTitle extends StatelessWidget {
  const ImageWithTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Logo(),
        const SizedBox(
          height: 23,
        ),
        Text(
          "SignUp",
          style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
              color: AppColor.oilColor),
        ),
      ],
    );
  }
}
