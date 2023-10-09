// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'papago_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PapagoResult _$PapagoResultFromJson(Map<String, dynamic> json) => PapagoResult(
      json['translatedText'] as String,
    );

Map<String, dynamic> _$PapagoResultToJson(PapagoResult instance) =>
    <String, dynamic>{
      'translatedText': instance.translatedText,
    };

PapagoMessage _$PapagoMessageFromJson(Map<String, dynamic> json) =>
    PapagoMessage(
      PapagoResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PapagoMessageToJson(PapagoMessage instance) =>
    <String, dynamic>{
      'result': instance.result,
    };

PapagoResponse _$PapagoResponseFromJson(Map<String, dynamic> json) =>
    PapagoResponse(
      PapagoMessage.fromJson(json['message'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PapagoResponseToJson(PapagoResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
    };
