import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:translator_without_state_management/common/color_util.dart';

class LanguageSelector extends StatelessWidget {
  const LanguageSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '한국어',
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(width: 4),
        LineIcon.angleDown(
          size: 12,
          color: ColorUtil.grayScale164,
        ),
      ],
    );
  }
}
