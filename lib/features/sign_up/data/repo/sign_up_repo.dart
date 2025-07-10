import 'package:medic_app/core/networking/api_error_handler.dart';
import 'package:medic_app/core/networking/api_result.dart';
import 'package:medic_app/core/networking/api_service.dart';
import 'package:medic_app/features/sign_up/data/model/sign_up_request_body.dart';
import 'package:medic_app/features/sign_up/data/model/sign_up_response.dart';

class SignupRepo {
  final ApiService apiService;

  SignupRepo(this.apiService);

  Future<ApiResult<SignUpResponse>> signup(
      SignUpRequestBody signUpRequestBody) async {
    try {
      final response = await apiService.signup(signUpRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
