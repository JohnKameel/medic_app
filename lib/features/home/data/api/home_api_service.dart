import 'package:dio/dio.dart';
import 'package:medic_app/core/networking/api_constants.dart';
import 'package:medic_app/features/home/data/models/specializations_response_model.dart';
import 'package:retrofit/retrofit.dart';

part 'home_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;

  @GET(ApiConstants.specialization)
  Future<SpecializationResponseModel> getSpecialization();
}
