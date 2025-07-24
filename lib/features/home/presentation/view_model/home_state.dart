import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medic_app/core/networking/api_error_handler.dart';
import 'package:medic_app/features/home/data/models/specializations_response_model.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  const factory HomeState.specializationLoading() = SpecializationsLoading;
  const factory HomeState.specializationSuccess(
          SpecializationResponseModel specializationsResponseModel) =
      SpecializationsSuccess;
  const factory HomeState.specializationsError(ErrorHandler error) =
      SpecializationsError;
}
