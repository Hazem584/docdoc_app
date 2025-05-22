import 'package:learn/core/networking/api_error_handeler.dart';
import 'package:learn/core/networking/api_service.dart';
import 'package:learn/features/home/ui/login/data/models/login_response.dart';

import '../../../../../../core/networking/api_result.dart';
import '../models/login_requset_body.dart';

class LoginRepo{
  final ApiService _apiService;

  LoginRepo(this._apiService);

  Future<ApiResult<LoginResponse>> login(LoginRequestBody loginRequestBody) async {
    try {
      final response = await _apiService.login(loginRequestBody);
      return ApiResult.success(response);
    }  catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}