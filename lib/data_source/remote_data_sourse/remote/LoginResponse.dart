import 'package:json_annotation/json_annotation.dart';

part 'LoginResponse.g.dart';

@JsonSerializable()
class LoginResponse{
  String? token;

  LoginResponse({this.token});

  factory LoginResponse.fromJson(Map<String,dynamic> json)=> 
      _$LoginResponseFromJson(json);

  Map<String,dynamic> toJson()=>
      _$LoginResponseToJson(this);
}