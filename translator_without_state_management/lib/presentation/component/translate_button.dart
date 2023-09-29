import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:translator_without_state_management/color_util.dart';

class TranslateButton extends StatelessWidget {
  const TranslateButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LineIcon.language(
            size: 16,
            color: ColorUtil.grayScale48,
          ),
          SizedBox(width: 4),
          Text(
            '번역하기',
            style: TextStyle(
              fontSize: 12,
              color: ColorUtil.grayScale12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
