import 'package:json_annotation/json_annotation.dart';

part 'endereco.data.g.dart';

@JsonSerializable()
class EnderecoData {
  final String street, suite, city, zipcode;

  EnderecoData({
    required this.street,
    required this.suite,
    required this.city,
    required this.zipcode,
  });

  factory EnderecoData.fromJson(Map<String, dynamic> json) =>
      _$EnderecoDataFromJson(json);

  Map<String, dynamic> toJson() => _$EnderecoDataToJson(this);
}
