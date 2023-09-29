import 'package:flutter/material.dart';
import 'package:translator_without_state_management/domain/translator.dart';
import 'package:translator_without_state_management/presentation/layout/translate_body.dart';
import 'package:translator_without_state_management/presentation/layout/translate_bottom.dart';
import 'package:translator_without_state_management/presentation/layout/translate_top.dart';

class TranslateScreen extends StatefulWidget {
  final Translator translator;
  const TranslateScreen({super.key, required this.translator});

  @override
  State<TranslateScreen> createState() => _TranslateScreenState();
}

class _TranslateScreenState extends State<TranslateScreen> {
  String? translateSourceText;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const TranslateTop(),
            TranslateBody(
              onChangedText: (text) {
                translateSourceText = text;
              },
            ),
            TranslateBottom(
              onTranslate: () {
                if( translateSourceText?.isNotEmpty ?? false ) {
                  widget.translator.translate(translateSourceText!);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
