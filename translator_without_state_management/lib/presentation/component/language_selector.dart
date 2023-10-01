import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:translator_without_state_management/common/color_util.dart';
import 'package:translator_without_state_management/common/enum.dart';
import 'package:translator_without_state_management/presentation/bottom_sheet/language_bottom_sheet.dart';

class LanguageSelector extends StatelessWidget {
  final LanguageType languageType;
  const LanguageSelector({super.key, required this.languageType});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          showDragHandle: true,
          builder: (context) {
            return LanguagesBottomSheet(languageType: languageType);
          },
        );
      },
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
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
      ),
    );
  }
}
