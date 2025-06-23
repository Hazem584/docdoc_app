import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/spacing.dart';
import '../../logic/home_cubit.dart';
import '../../logic/home_state.dart';
import 'doctor_speciality_list_view.dart';
import 'doctors_list_view.dart';

class SpecializationsAndDoctorsBlocBuilder extends StatelessWidget {
  const SpecializationsAndDoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen:
          (previous, current) =>
      current is SpecializationsLoading ||
          current is SpecializationsSuccess ||
          current is SpecializationsError,
      builder: (context, state) {
        return state.maybeWhen(
          specializationsLoading: () {
            return setupLoadingState();
          },
          specializationsSuccess: (specializationsResponseModel) {
            var specializationsList = specializationsResponseModel.specializationDataList;
            return setupSuccessState(specializationsList);
          },
          specializationsError: (errorHandler) => setupErrorState(),
          orElse:
              () => const Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
  Widget setupLoadingState() {
    return const SizedBox(
      height: 100,
      child: Center(child: CircularProgressIndicator()),
    );
  }
  Widget setupSuccessState(specializationsList) {
    return Column(
      children: [
        DoctorSpecialityListView(
          specializationsDataList: specializationsList ?? [],
        ),
        verticalSpace(8),
        Expanded(
          child: DoctorsListView(
            doctorsList: specializationsList?[0]?.doctorsList ?? [],
          ),
        ),
      ],
    );
  }

  Widget setupErrorState() {
    return const SizedBox.shrink();
  }
}
