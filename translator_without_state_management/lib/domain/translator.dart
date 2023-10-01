import 'package:translator_without_state_management/common/enum.dart';
import 'package:translator_without_state_management/data/papago_response.dart';
import 'package:translator_without_state_management/data/translate_repository.dart';

class Translator {
  final TranslateRepository repository;
  const Translator({required this.repository});
  Future<String> translate({required String source, required List<Languages?> languages}) async {
    PapagoResponse response = await repository.translate(source: source, languages: languages);
    return response.message.result.translatedText;
  }
}