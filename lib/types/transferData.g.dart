// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transferData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransferData _$TransferDataFromJson(Map<String, dynamic> json) {
  return TransferData(
    destination: json['destination'] as String,
    transferPercent: (json['transferPercent'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$TransferDataToJson(TransferData instance) =>
    <String, dynamic>{
      'destination': instance.destination,
      'transferPercent': instance.transferPercent,
    };
