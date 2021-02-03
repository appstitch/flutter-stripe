import 'package:json_annotation/json_annotation.dart';

part 'transferData.g.dart';

@JsonSerializable(explicitToJson: true)
class TransferData {
  TransferData({
    this.destination,
    this.transferPercent,
  });

  String destination;
  double transferPercent;

  factory TransferData.fromJson(Map<String, dynamic> json) =>
      _$TransferDataFromJson(json);
  Map<String, dynamic> toJson() => _$TransferDataToJson(this);
}
