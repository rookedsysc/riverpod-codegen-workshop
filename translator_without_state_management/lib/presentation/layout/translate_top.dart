import 'package:flutter/material.dart';
import 'package:translator_without_state_management/common/color_util.dart';
import 'package:translator_without_state_management/common/enum.dart';
import 'package:translator_without_state_management/presentation/component/language_exchanger.dart';
import 'package:translator_without_state_management/presentation/component/language_selector.dart';

class TranslateTop extends StatelessWidget {
  const TranslateTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 48,
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: LanguageSelector(
                  languageType: LanguageType.source,
                ),
              ),
              LanguageExchanger(),
              Expanded(
                flex: 1,
                child: LanguageSelector(
                  languageType: LanguageType.dest,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 0.5,
          color: ColorUtil.grayScale74,
        ),
      ],
    );
  }
}
