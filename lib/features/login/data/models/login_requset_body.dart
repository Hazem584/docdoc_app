

import 'package:json_annotation/json_annotation.dart';
part 'login_requset_body.g.dart';
@JsonSerializable()
class LoginRequestBody {
  String email;
  String password;

  LoginRequestBody({
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toJson() => _$LoginRequestBodyToJson(this);

  }
