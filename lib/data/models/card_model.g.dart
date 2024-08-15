// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CardModelImpl _$$CardModelImplFromJson(Map<String, dynamic> json) =>
    _$CardModelImpl(
      id: json['id'] as String?,
      fullName: json['fullName'] as String,
      number: json['number'] as String,
      expiryDate: json['expiryDate'] as String,
      balance: (json['balance'] as num).toDouble(),
    );

Map<String, dynamic> _$$CardModelImplToJson(_$CardModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'number': instance.number,
      'expiryDate': instance.expiryDate,
      'balance': instance.balance,
    };
