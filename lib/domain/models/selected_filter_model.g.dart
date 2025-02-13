// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selected_filter_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SelectedFilterModelImpl _$$SelectedFilterModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SelectedFilterModelImpl(
      condition: (json['condition'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      make:
          (json['make'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      storage: (json['storage'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      ram: (json['ram'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const [],
      warranty: (json['warranty'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      priceRange: (json['priceRange'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const [],
      verified: json['verified'] as bool? ?? false,
      sort: json['sort'] as Map<String, dynamic>? ?? const {},
      page: (json['page'] as num?)?.toInt() ?? 1,
    );

Map<String, dynamic> _$$SelectedFilterModelImplToJson(
        _$SelectedFilterModelImpl instance) =>
    <String, dynamic>{
      'condition': instance.condition,
      'make': instance.make,
      'storage': instance.storage,
      'ram': instance.ram,
      'warranty': instance.warranty,
      'priceRange': instance.priceRange,
      'verified': instance.verified,
      'sort': instance.sort,
      'page': instance.page,
    };
