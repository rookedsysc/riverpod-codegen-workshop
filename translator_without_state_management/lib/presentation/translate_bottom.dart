import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:translator_without_state_management/color_util.dart';

class TranslateBottom extends StatelessWidget {
  const TranslateBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          height: 0.5,
          color: ColorUtil.grayScale74,
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Container(
            height: 32,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              color: ColorUtil.grayScale222,
            ),
            child: const Center(
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
                      color: ColorUtil.grayScale48,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
