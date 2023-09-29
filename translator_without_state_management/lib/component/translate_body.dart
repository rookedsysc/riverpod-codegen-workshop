import 'package:flutter/material.dart';

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
            ),
          );
        },
      ),
    );
  }
}
