import 'package:dio/dio.dart';
import 'package:medic_app/features/login/data/model/login_request_body.dart';
import 'package:medic_app/features/login/data/model/login_response.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import '../../features/sign_up/data/model/sign_up_request_body.dart';
import '../../features/sign_up/data/model/sign_up_response.dart';
import 'api_constants.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {

  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );

  @POST(ApiConstants.signup)
  Future<SignUpResponse> signup(
    @Body() SignUpRequestBody signupRequestBody,
  );
}