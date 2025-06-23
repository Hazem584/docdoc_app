import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn/core/helpers/constants.dart';
import 'package:learn/core/helpers/shared_pref_helper.dart';
import 'package:learn/core/networking/dio_factory.dart';
import 'package:learn/features/login/data/models/login_requset_body.dart';
import 'package:learn/features/login/data/repos/login_repo.dart';
import 'package:learn/features/login/logic/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;

  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitLoginStates(LoginRequestBody loginRequestBody) async {
      emit(const LoginState.loading());
      final response = await _loginRepo.login(loginRequestBody);

      response.when(success: (LoginResponse) async {
        await saveUserToken(LoginResponse.userData?.token ?? "");
          emit(LoginState.success(LoginResponse));
        }, failure: (error) {
          emit(LoginState.error(error: error.apiErrorModel.message ?? ""));
        },
      );
  }
  Future<void> saveUserToken(String token) async {
    await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken,token );
    DioFactory.setTokenAfterLogin(token);
  }
}
