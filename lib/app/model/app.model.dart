import 'package:freezed_annotation/freezed_annotation.dart';

part 'app.model.freezed.dart';
part 'app.model.g.dart';

@freezed
abstract class AppModel with _$AppModel {
  factory AppModel(final List<Products>? products) = _AppModel;
  factory AppModel.fromJson(Map<String, dynamic> json) =>
      _$AppModelFromJson(json);
}

@freezed
class Products with _$Products {
  factory Products(
    final int? id,
    final String? title,
    final String? description,
    final int? price,
    final double? discountPercentage,
    final double? rating,
    final int? stock,
    final String? brand,
    final String? category,
    final String? thumbnail,
  ) = _Products;

  factory Products.fromJson(Map<String, dynamic> json) =>
      _$ProductsFromJson(json);
}
