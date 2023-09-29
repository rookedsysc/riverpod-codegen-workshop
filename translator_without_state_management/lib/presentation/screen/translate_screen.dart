import 'package:flutter/material.dart';
import 'package:translator_without_state_management/domain/translator.dart';
import 'package:translator_without_state_management/presentation/layout/translate_body.dart';
import 'package:translator_without_state_management/presentation/layout/translate_bottom.dart';
import 'package:translator_without_state_management/presentation/layout/translate_top.dart';

class TranslateScreen extends StatelessWidget {
  final Translator translator;
  const TranslateScreen({super.key, required this.translator});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const TranslateTop(),
            TranslateBody(
              onChangedText: (text) {
                // TODO: 번역하기 버튼이 눌렸을 때 번역할 텍스트 상태 저장하기
              },
            ),
            TranslateBottom(
              onTranslate: () {
                // TODO: Translator 객체를 이용해 번역 API 호출하기, API 호출 후 응답의 상태를 저장하고, 화면에 갱신하기
              },
            ),
          ],
        ),
      ),
    );
  }
}
