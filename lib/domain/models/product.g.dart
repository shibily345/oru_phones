// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      id: json['_id'] as String,
      deviceCondition: json['deviceCondition'] as String,
      listedBy: json['listedBy'] as String,
      deviceStorage: json['deviceStorage'] as String,
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => ProductImage.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      defaultImage: json['defaultImage'] == null
          ? null
          : DefaultImage.fromJson(json['defaultImage'] as Map<String, dynamic>),
      listingState: json['listingState'] as String,
      listingLocation: json['listingLocation'] as String,
      listingLocality: json['listingLocality'] as String,
      listingPrice: json['listingPrice'] as String,
      make: json['make'] as String,
      marketingName: json['marketingName'] as String,
      openForNegotiation: json['openForNegotiation'] as bool,
      verified: json['verified'] as bool,
      listingId: json['listingId'] as String,
      status: json['status'] as String,
      verifiedDate: json['verifiedDate'] as String,
      listingDate: json['listingDate'] as String,
      deviceRam: json['deviceRam'] as String,
      warranty: json['warranty'] as String,
      originalPrice: (json['originalPrice'] as num?)?.toInt() ?? 0,
      discountedPrice: (json['discountedPrice'] as num?)?.toInt() ?? 0,
      imagePath: json['imagePath'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      location: json['location'] == null
          ? null
          : ProductLocation.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'deviceCondition': instance.deviceCondition,
      'listedBy': instance.listedBy,
      'deviceStorage': instance.deviceStorage,
      'images': instance.images,
      'defaultImage': instance.defaultImage,
      'listingState': instance.listingState,
      'listingLocation': instance.listingLocation,
      'listingLocality': instance.listingLocality,
      'listingPrice': instance.listingPrice,
      'make': instance.make,
      'marketingName': instance.marketingName,
      'openForNegotiation': instance.openForNegotiation,
      'verified': instance.verified,
      'listingId': instance.listingId,
      'status': instance.status,
      'verifiedDate': instance.verifiedDate,
      'listingDate': instance.listingDate,
      'deviceRam': instance.deviceRam,
      'warranty': instance.warranty,
      'originalPrice': instance.originalPrice,
      'discountedPrice': instance.discountedPrice,
      'imagePath': instance.imagePath,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'location': instance.location,
    };

_$ProductImageImpl _$$ProductImageImplFromJson(Map<String, dynamic> json) =>
    _$ProductImageImpl(
      thumbImage: json['thumbImage'] as String,
      fullImage: json['fullImage'] as String,
      isVarified: json['isVarified'] as String,
      option: json['option'] as String,
      id: json['_id'] as String,
    );

Map<String, dynamic> _$$ProductImageImplToJson(_$ProductImageImpl instance) =>
    <String, dynamic>{
      'thumbImage': instance.thumbImage,
      'fullImage': instance.fullImage,
      'isVarified': instance.isVarified,
      'option': instance.option,
      '_id': instance.id,
    };

_$DefaultImageImpl _$$DefaultImageImplFromJson(Map<String, dynamic> json) =>
    _$DefaultImageImpl(
      fullImage: json['fullImage'] as String,
      id: json['_id'] as String,
    );

Map<String, dynamic> _$$DefaultImageImplToJson(_$DefaultImageImpl instance) =>
    <String, dynamic>{
      'fullImage': instance.fullImage,
      '_id': instance.id,
    };

_$ProductLocationImpl _$$ProductLocationImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductLocationImpl(
      type: json['type'] as String,
      coordinates: (json['coordinates'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      id: json['_id'] as String,
    );

Map<String, dynamic> _$$ProductLocationImplToJson(
        _$ProductLocationImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'coordinates': instance.coordinates,
      '_id': instance.id,
    };
