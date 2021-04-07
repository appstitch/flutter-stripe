// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Token _$TokenFromJson(Map<String, dynamic> json) {
  return Token(
    card: json['card'] == null
        ? null
        : CreateCardOpts.fromJson(json['card'] as Map<String, dynamic>),
    created: (json['created'] as num?)?.toDouble(),
    livemode: json['livemode'] as bool?,
    tokenId: json['token_id'] as String?,
  );
}

Map<String, dynamic> _$TokenToJson(Token instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('card', instance.card?.toJson());
  writeNotNull('created', instance.created);
  writeNotNull('livemode', instance.livemode);
  writeNotNull('token_id', instance.tokenId);
  return val;
}
