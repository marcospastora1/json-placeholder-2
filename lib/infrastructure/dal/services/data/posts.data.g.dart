// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posts.data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostsData _$PostsDataFromJson(Map<String, dynamic> json) => PostsData(
      id: json['id'] as int,
      userId: json['userId'] as int,
      title: json['title'] as String,
      body: json['body'] as String,
    );

Map<String, dynamic> _$PostsDataToJson(PostsData instance) => <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'title': instance.title,
      'body': instance.body,
    };
