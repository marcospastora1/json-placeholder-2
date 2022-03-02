// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comentarios.data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ComentariosData _$ComentariosDataFromJson(Map<String, dynamic> json) =>
    ComentariosData(
      id: json['id'] as int,
      postId: json['postId'] as int,
      name: json['name'] as String,
      body: json['body'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$ComentariosDataToJson(ComentariosData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'postId': instance.postId,
      'name': instance.name,
      'email': instance.email,
      'body': instance.body,
    };
