// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_usuarios.response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetUsuariosResponse _$GetUsuariosResponseFromJson(Map<String, dynamic> json) =>
    GetUsuariosResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => UsuariosData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetUsuariosResponseToJson(
        GetUsuariosResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
