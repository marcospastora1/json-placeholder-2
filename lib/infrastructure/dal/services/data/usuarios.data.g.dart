// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usuarios.data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UsuariosData _$UsuariosDataFromJson(Map<String, dynamic> json) => UsuariosData(
      id: json['id'] as int,
      name: json['name'] as String,
      email: json['email'] as String,
      address: EnderecoData.fromJson(json['address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UsuariosDataToJson(UsuariosData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'address': instance.address,
    };
