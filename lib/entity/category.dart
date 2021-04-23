import 'package:freezed_annotation/freezed_annotation.dart';
part 'category.freezed.dart';

@freezed
class Category with _$Category {
  factory Category({ required int id, required int homeId, required String path, required String iconUrl}) = _Category;
}