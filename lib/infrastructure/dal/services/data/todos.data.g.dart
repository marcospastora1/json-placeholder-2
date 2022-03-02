// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todos.data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TodosData _$TodosDataFromJson(Map<String, dynamic> json) => TodosData(
      id: json['id'] as int,
      userId: json['userId'] as int,
      title: json['title'] as String,
      completed: json['completed'] as bool,
    );

Map<String, dynamic> _$TodosDataToJson(TodosData instance) => <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'title': instance.title,
      'completed': instance.completed,
    };
