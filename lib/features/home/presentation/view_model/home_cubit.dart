import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medic_app/features/home/data/repo/home_repo.dart';
import 'package:medic_app/features/home/presentation/view_model/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  void getSpecializations() async {
    emit(const HomeState.specializationLoading());
    final result = await _homeRepo.getSpecialization();
    result.when(
      success: (specializationResponseModel) {
        emit(HomeState.specializationSuccess(specializationResponseModel));
      },
      failure: (error) {
        emit(HomeState.specializationsError(error));
      },
    );
  }
}
