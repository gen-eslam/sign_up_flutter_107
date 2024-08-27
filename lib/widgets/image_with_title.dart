import 'package:flutter/material.dart';
import 'package:third_project_107/utils/app_color.dart';

class ImageWithTitle extends StatelessWidget {
  const ImageWithTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXJA32WU4rBpx7maglqeEtt3ot1tPIRWptxA&s",
        ),
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
