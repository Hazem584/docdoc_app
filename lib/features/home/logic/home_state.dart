import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:learn/core/networking/api_error_handeler.dart';

import '../data/models/specializations_response_model.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  const factory HomeState.specializationsLoading() = SpecializationsLoading;
  const factory HomeState.specializationsSuccess(SpecializationsResponseModel specializationsResponseModel) = SpecializationsSuccess;
  const factory HomeState.specializationsError(ErrorHandler errorHandler) =
  SpecializationsError;
}