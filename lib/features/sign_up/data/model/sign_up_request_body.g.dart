// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpRequestBody _$SignupRequestBodyFromJson(Map<String, dynamic> json) =>
    SignUpRequestBody(
          name: json['name'] as String,
          email: json['email'] as String,
          phone: json['phone'] as String,
          password: json['password'] as String,
          passwordConfirmation: json['password_confirmation'] as String,
          gender: json['gender'] as int,
    );

Map<String, dynamic> _$SignupRequestBodyToJson(SignUpRequestBody instance) =>
    <String, dynamic>{
          'name': instance.name,
          'email': instance.email,
          'phone': instance.phone,
          'password': instance.password,
          'password_confirmation': instance.passwordConfirmation,
          'gender': instance.gender,
    };