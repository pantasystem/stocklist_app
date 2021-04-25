import 'package:freezed_annotation/freezed_annotation.dart';
part 'home.freezed.dart';

@freezed
class Home with _$Home {
  factory Home({ required int id, required String name}) = _Home;
}