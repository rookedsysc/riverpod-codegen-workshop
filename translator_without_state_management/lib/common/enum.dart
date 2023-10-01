enum LanguageType {
  source,
  dest,
}

enum Languages {
  korean(display: '한국어', code: 'ko', flag: '🇰🇷'),
  english(display: '영어', code: 'en', flag: '🇺🇸'),
  japanese(display: '일본어', code: 'ja', flag: '🇯🇵'),
  chineseCn(display: '중국어 간체', code: 'zh-CN', flag: '🇨🇳'),
  chineseTw(display: '중국어 번체', code: 'zh-TW', flag: '🇨🇳'),
  spanish(display: '스페인어', code: 'es', flag: '🇪🇸'),
  french(display: '프랑스어', code: 'fr', flag: '🇫🇷');

  const Languages({required this.display, required this.code, required this.flag});
  final String code;
  final String display;
  final String flag;

  @override
  String toString() => code;
}