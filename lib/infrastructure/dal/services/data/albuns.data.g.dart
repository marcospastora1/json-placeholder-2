// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'albuns.data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AlbunsData _$AlbunsDataFromJson(Map<String, dynamic> json) => AlbunsData(
      id: json['id'] as int,
      userId: json['userId'] as int,
      title: json['title'] as String,
    );

Map<String, dynamic> _$AlbunsDataToJson(AlbunsData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'title': instance.title,
    };
