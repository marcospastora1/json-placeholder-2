import 'package:json_annotation/json_annotation.dart';
part 'todos.data.g.dart';

@JsonSerializable()
class TodosData {
  final int id;
  final int userId;
  final String title;
  final bool completed;

  TodosData({
    required this.id,
    required this.userId,
    required this.title,
    required this.completed,
  });

  factory TodosData.fromJson(Map<String, dynamic> json) =>
      _$TodosDataFromJson(json);

  Map<String, dynamic> toJson() => _$TodosDataToJson(this);
}
