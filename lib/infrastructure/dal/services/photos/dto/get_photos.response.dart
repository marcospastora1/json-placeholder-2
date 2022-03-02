import 'package:ekko/infrastructure/dal/services/data/comentarios.data.dart';
import 'package:ekko/infrastructure/dal/services/data/fotos.data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_photos.response.g.dart';

@JsonSerializable()
class GetPhotosResponse {
  final List<FotosData> data;

  GetPhotosResponse({required this.data});

  factory GetPhotosResponse.fromJson(Map<String, dynamic> json) =>
      _$GetPhotosResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetPhotosResponseToJson(this);
}
