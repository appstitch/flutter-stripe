// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transferData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransferData _$TransferDataFromJson(Map<String, dynamic> json) {
  return TransferData(
    destination: json['destination'] as String,
    transferPercent: json['transfer_percent'] as int,
  );
}

Map<String, dynamic> _$TransferDataToJson(TransferData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('destination', instance.destination);
  writeNotNull('transfer_percent', instance.transferPercent);
  return val;
}
