import 'package:json_annotation/json_annotation.dart';
part 'albuns.data.g.dart';

@JsonSerializable()
class AlbunsData {
  final int id;
  final int userId;
  final String title;

  AlbunsData({
    required this.id,
    required this.userId,
    required this.title,
  });

  factory AlbunsData.fromJson(Map<String, dynamic> json) =>
      _$AlbunsDataFromJson(json);

  Map<String, dynamic> toJson() => _$AlbunsDataToJson(this);
}
