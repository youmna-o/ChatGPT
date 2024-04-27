// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'responses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChoicesTextCompletionResponse _$ChoicesTextCompletionResponseFromJson(
        Map<String, dynamic> json) =>
    ChoicesTextCompletionResponse(
      json['index'] as num?,
      json['message'] as Map?,
      json['finish_reason'] as String?,
    );

Map<String, dynamic> _$ChoicesTextCompletionResponseToJson(
        ChoicesTextCompletionResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'index': instance.index,
      'finish_reason': instance.finishReason,
    };

TextCompletionResponse _$TextCompletionResponseFromJson(
        Map<String, dynamic> json) =>
    TextCompletionResponse(
      json['created'] as num?,
      (json['choices'] as List<dynamic>?)
          ?.map((e) =>
              ChoicesTextCompletionResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TextCompletionResponseToJson(
        TextCompletionResponse instance) =>
    <String, dynamic>{
      'created': instance.created,
      'choices': instance.choices,
    };
