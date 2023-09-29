import 'package:json_annotation/json_annotation.dart';

part 'papago_response.g.dart';

@JsonSerializable()
class PapagoResult {
  String translatedText;
  PapagoResult(this.translatedText);
  factory PapagoResult.fromJson(Map<String, dynamic> json) => _$PapagoResultFromJson(json);
  Map<String, dynamic> toJson() => _$PapagoResultToJson(this);
}

@JsonSerializable()
class PapagoMessage {
  PapagoResult result;
  PapagoMessage(this.result);
  factory PapagoMessage.fromJson(Map<String, dynamic> json) => _$PapagoMessageFromJson(json);
  Map<String, dynamic> toJson() => _$PapagoMessageToJson(this);
}

@JsonSerializable()
class PapagoResponse {
  @JsonKey()
  PapagoMessage message;
  PapagoResponse(this.message);

  factory PapagoResponse.fromJson(Map<String, dynamic> json) => _$PapagoResponseFromJson(json);
  Map<String, dynamic> toJson() => _$PapagoResponseToJson(this);
}
