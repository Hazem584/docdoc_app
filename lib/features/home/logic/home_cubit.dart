import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn/features/home/data/repos/home_repos.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  void getSpecializations() async {
    debugPrint("getSpecializations called");
    emit(const HomeState.specializationsLoading());
    final response = await _homeRepo.getSpecializations();
    response.when(
      success: (specializationsResponseModel) {
        debugPrint("getSpecializations success: ${specializationsResponseModel.specializationDataList!.length}");
        emit(HomeState.specializationsSuccess(specializationsResponseModel));
      },
      failure: (errorHandler) {
        debugPrint("getSpecializations error: ${errorHandler.apiErrorModel.message}");
        emit(HomeState.specializationsError(errorHandler));
      },
    );
  }
}