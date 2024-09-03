
import 'package:flutter/material.dart';
import 'package:third_project_107/widgets/logo.dart';

class SecondSection extends StatelessWidget {
  const SecondSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(48),
      child: const Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("About"),
              SizedBox(
                width: 20,
              ),
              Text("Contact Us"),
            ],
          ),
          SizedBox(
            height: 85,
          ),
          Expanded(child: Logo()),
        ],
      ),
    );
  }
}
