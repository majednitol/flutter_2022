import 'package:freezed_annotation/freezed_annotation.dart';

part 'todos.freezed.dart';
part 'todos.g.dart';

@freezed
class Todos with _$Todos {
  factory Todos({
    int? userId,
    int? id,
    String? title,
    String? body,
  }) = _Todos;

  factory Todos.fromJson(Map<String, dynamic> json) => _$TodosFromJson(json);
}
