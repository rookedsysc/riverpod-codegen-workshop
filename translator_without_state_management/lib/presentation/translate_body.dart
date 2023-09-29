import 'package:flutter/material.dart';
import 'package:translator_without_state_management/presentation/translate_input_textfield.dart';

class TranslateBody extends StatelessWidget {
  const TranslateBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
              ),
              child: const Padding(
                padding: EdgeInsets.all(8),
                child: TranslateInputTextField(),
              ),
            ),
          );
        },
      ),
    );
  }
}
