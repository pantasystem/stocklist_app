import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stocklist_app/entity/user.dart';
part 'home.freezed.dart';

@freezed
class Home with _$Home {
  factory Home({ required int id, required String name, required List<User> members}) = _Home;
}