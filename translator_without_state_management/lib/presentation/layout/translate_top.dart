import 'package:flutter/material.dart';
import 'package:translator_without_state_management/common/color_util.dart';
import 'package:translator_without_state_management/common/enum.dart';
import 'package:translator_without_state_management/presentation/component/language_exchanger.dart';
import 'package:translator_without_state_management/presentation/component/language_selector.dart';

class TranslateTop extends StatefulWidget {
  const TranslateTop({super.key});

  @override
  State<TranslateTop> createState() => _TranslateTopState();
}

class _TranslateTopState extends State<TranslateTop> {
  final List<Languages?> languages = [Languages.korean, Languages.english];

  Widget _createLanguageSelector(LanguageKind languageKind) {
    return Expanded(
      flex: 1,
      child: LanguageSelector(
        languageKind: languageKind,
        language: languages[languageKind.index],
        onSelectedLanguage: (language) {
          setState(() {
            languages[languageKind.index] = language;
            final otherLanguageKind = languageKind == LanguageKind.source
                ? LanguageKind.dest
                : LanguageKind.source;
            if (languages[languageKind.index] ==
                languages[otherLanguageKind.index]) {
              languages[otherLanguageKind.index] = null;
            }
          });
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 48,
          child: Row(
            children: [
              _createLanguageSelector(LanguageKind.source),
              const LanguageExchanger(),
              _createLanguageSelector(LanguageKind.dest),
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
