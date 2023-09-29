import 'package:translator_without_state_management/data/papago_response.dart';
import 'package:translator_without_state_management/data/translate_repository.dart';

class Translator {
  final TranslateRepository repository;
  const Translator({required this.repository});
  Future<String> translate(String source) async {
    PapagoResponse response = await repository.translate(source);
    return response.message.result.translatedText;
  }
}