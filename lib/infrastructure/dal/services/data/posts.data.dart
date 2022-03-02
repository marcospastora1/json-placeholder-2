import 'package:json_annotation/json_annotation.dart';

part 'posts.data.g.dart';

@JsonSerializable()
class PostsData {
  final int id;
  final int userId;
  final String title;
  final String body;

  PostsData({
    required this.id,
    required this.userId,
    required this.title,
    required this.body,
  });

  factory PostsData.fromJson(Map<String, dynamic> json) =>
      _$PostsDataFromJson(json);

  Map<String, dynamic> toJson() => _$PostsDataToJson(this);
}
