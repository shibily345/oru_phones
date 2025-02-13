// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FilterModelImpl _$$FilterModelImplFromJson(Map<String, dynamic> json) =>
    _$FilterModelImpl(
      reason: json['reason'] as String? ?? "",
      statusCode: (json['statusCode'] as num?)?.toInt() ?? 0,
      status: json['status'] as String? ?? "",
      dataObject:
          FilterData.fromJson(json['dataObject'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FilterModelImplToJson(_$FilterModelImpl instance) =>
    <String, dynamic>{
      'reason': instance.reason,
      'statusCode': instance.statusCode,
      'status': instance.status,
      'dataObject': instance.dataObject,
    };

_$FilterDataImpl _$$FilterDataImplFromJson(Map<String, dynamic> json) =>
    _$FilterDataImpl(
      Brand:
          (json['Brand'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      Ram: (json['Ram'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const [],
      Storage: (json['Storage'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      Conditions: (json['Conditions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      Warranty: (json['Warranty'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$FilterDataImplToJson(_$FilterDataImpl instance) =>
    <String, dynamic>{
      'Brand': instance.Brand,
      'Ram': instance.Ram,
      'Storage': instance.Storage,
      'Conditions': instance.Conditions,
      'Warranty': instance.Warranty,
    };
