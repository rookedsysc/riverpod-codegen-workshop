import 'package:flutter/material.dart';
import 'package:translator_without_state_management/common/color_util.dart';
import 'package:translator_without_state_management/common/enum.dart';

class _LanguageItem extends StatelessWidget {
  final Languages language;
  const _LanguageItem({required this.language});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pop(language),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6),
        child: Center(
          child: RichText(
            text: TextSpan(
              text: language.flag,
              style: const TextStyle(
                fontSize: 20,
              ),
              children: [
                TextSpan(
                  text: language.display,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: ColorUtil.grayScale74,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LanguagesBottomSheet extends StatelessWidget {
  final LanguageKind languageKind;
  const LanguagesBottomSheet({
    super.key,
    required this.languageKind,
  });

  @override
  Widget build(BuildContext context) {
    const languages = Languages.values;
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: ListView.separated(
            itemCount: languages.length,
            itemBuilder: (context, index) =>
                _LanguageItem(language: languages[index]),
            separatorBuilder: (BuildContext context, int index) {
              return Container(
                height: 0.5,
                color: ColorUtil.grayScale74.withOpacity(0.08),
              );
            },
          ),
        ),
        SizedBox(
          height: 24,
          child: Center(
            child: Text(
              languageKind == LanguageKind.source ? '이 언어로 입력' : '이 언어로 번역',
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
                color: ColorUtil.background,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
