// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppModel _$$_AppModelFromJson(Map<String, dynamic> json) => _$_AppModel(
      (json['products'] as List<dynamic>?)
          ?.map((e) => Products.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AppModelToJson(_$_AppModel instance) =>
    <String, dynamic>{
      'products': instance.products,
    };

_$_Products _$$_ProductsFromJson(Map<String, dynamic> json) => _$_Products(
      json['id'] as int?,
      json['title'] as String?,
      json['description'] as String?,
      json['price'] as int?,
      (json['discountPercentage'] as num?)?.toDouble(),
      (json['rating'] as num?)?.toDouble(),
      json['stock'] as int?,
      json['brand'] as String?,
      json['category'] as String?,
      json['thumbnail'] as String?,
    );

Map<String, dynamic> _$$_ProductsToJson(_$_Products instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'discountPercentage': instance.discountPercentage,
      'rating': instance.rating,
      'stock': instance.stock,
      'brand': instance.brand,
      'category': instance.category,
      'thumbnail': instance.thumbnail,
    };
