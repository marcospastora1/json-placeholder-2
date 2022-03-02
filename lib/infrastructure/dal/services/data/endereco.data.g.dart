// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'endereco.data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EnderecoData _$EnderecoDataFromJson(Map<String, dynamic> json) => EnderecoData(
      street: json['street'] as String,
      suite: json['suite'] as String,
      city: json['city'] as String,
      zipcode: json['zipcode'] as String,
    );

Map<String, dynamic> _$EnderecoDataToJson(EnderecoData instance) =>
    <String, dynamic>{
      'street': instance.street,
      'suite': instance.suite,
      'city': instance.city,
      'zipcode': instance.zipcode,
    };
