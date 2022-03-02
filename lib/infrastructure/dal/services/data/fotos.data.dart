import 'package:json_annotation/json_annotation.dart';
part 'fotos.data.g.dart';

@JsonSerializable()
class FotosData {
  final int id;
  final int albumId;
  final String title;
  final String url;
  final String thumbnailUrl;

  FotosData({
    required this.id,
    required this.albumId,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  });

  factory FotosData.fromJson(Map<String, dynamic> json) =>
      _$FotosDataFromJson(json);

  Map<String, dynamic> toJson() => _$FotosDataToJson(this);
}
