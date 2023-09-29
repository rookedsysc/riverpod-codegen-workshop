import 'package:flutter/material.dart';
import 'package:translator_without_state_management/color_util.dart';
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
                child: LanguageSelector(),
              ),
              LanguageExchanger(),
              Expanded(
                flex: 1,
                child: LanguageSelector(),
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
