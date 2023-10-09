import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:translator_without_state_management/domain/provider/languages_notifier_provider.dart';
import 'package:translator_without_state_management/domain/provider/translate_text_notifier_provider.dart';
import 'package:translator_without_state_management/domain/provider/translator_provider.dart';

final translateProvider =
    NotifierProvider<TranslateProvider, List<String>>(TranslateProvider.new);

class TranslateProvider extends Notifier<List<String>> {
  @override
  List<String> build() {
    return [];
  }

  Future<String> initiate() async {
    final translateText = ref.watch(translateTextNotifierProvider);
    await ref.watch(translateTextFamilyProvider(translateText)).then((value) {
      state = [...state, value];
    });
    return state.last;
  }
}

final translateTextFamilyProvider =
    Provider.family<Future<String>, String>((ref, translateText) async {
  final translator = ref.watch(translatorProvider);
  final selectedLanguages = ref.watch(languagesNotifierProvider);
  return translator.translate(
      source: translateText, languages: selectedLanguages);
});
