// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_photos.response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetPhotosResponse _$GetPhotosResponseFromJson(Map<String, dynamic> json) =>
    GetPhotosResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => FotosData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetPhotosResponseToJson(GetPhotosResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
