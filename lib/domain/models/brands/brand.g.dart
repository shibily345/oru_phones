// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BrandImpl _$$BrandImplFromJson(Map<String, dynamic> json) => _$BrandImpl(
      make: json['make'] as String? ?? "Other",
      imagePath: json['imagePath'] as String? ?? "non",
    );

Map<String, dynamic> _$$BrandImplToJson(_$BrandImpl instance) =>
    <String, dynamic>{
      'make': instance.make,
      'imagePath': instance.imagePath,
    };

_$BrandResponseImpl _$$BrandResponseImplFromJson(Map<String, dynamic> json) =>
    _$BrandResponseImpl(
      reason: json['reason'] as String,
      statusCode: (json['statusCode'] as num).toInt(),
      status: json['status'] as String,
      brands: (json['dataObject'] as List<dynamic>)
          .map((e) => Brand.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BrandResponseImplToJson(_$BrandResponseImpl instance) =>
    <String, dynamic>{
      'reason': instance.reason,
      'statusCode': instance.statusCode,
      'status': instance.status,
      'dataObject': instance.brands,
    };
