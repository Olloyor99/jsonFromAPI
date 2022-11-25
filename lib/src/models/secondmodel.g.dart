// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'secondmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SecondNewApi _$SecondNewApiFromJson(Map<String, dynamic> json) => SecondNewApi(
      id: json['id'] as int?,
      title: json['title'] as String?,
      price: json['price'] as int?,
      description: json['description'] as String?,
      category: json['category'] == null
          ? null
          : Category.fromJson(json['category'] as Map<String, dynamic>),
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      categoryId: json['categoryId'] as int?,
    );

Map<String, dynamic> _$SecondNewApiToJson(SecondNewApi instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'description': instance.description,
      'category': instance.category,
      'images': instance.images,
      'categoryId': instance.categoryId,
    };

Category _$CategoryFromJson(Map<String, dynamic> json) => Category(
      id: json['id'] as int?,
      name: $enumDecodeNullable(_$NameEnumMap, json['name']),
      image: json['image'] as String?,
      keyLoremSpace: json['keyLoremSpace'] as String?,
    );

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'id': instance.id,
      'name': _$NameEnumMap[instance.name],
      'image': instance.image,
      'keyLoremSpace': instance.keyLoremSpace,
    };

const _$NameEnumMap = {
  Name.SHOES: 'SHOES',
  Name.ELECTRONICS: 'ELECTRONICS',
  Name.OTHERS: 'OTHERS',
  Name.CLOTHES: 'CLOTHES',
  Name.FURNITURE: 'FURNITURE',
};

EnumValues _$EnumValuesFromJson(Map<String, dynamic> json) => EnumValues(
      json['map'] as Map<String, dynamic>?,
    )..reverseMap = (json['reverseMap'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      );

Map<String, dynamic> _$EnumValuesToJson(EnumValues instance) =>
    <String, dynamic>{
      'map': instance.map,
      'reverseMap': instance.reverseMap,
    };
