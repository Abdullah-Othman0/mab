// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mab/screens/register/cubit/states.dart';
import 'package:mab/shared/network/endpoints.dart';
import 'package:mab/shared/network/remote/dio_helper.dart';

class RegisterCubit extends Cubit<RegisterStates> {
  RegisterCubit() : super(InitialRegisterState());
  static RegisterCubit get(context) => BlocProvider.of(context);

  void userRegister({
    required String email,
    required String password,
    required String phone,
    required String name,
  }) {
    emit(RegisterLoadingState());

    DioHelper.postData(url: REGISTER, data: {
      "name": name,
      "phone": phone,
      "email": email,
      "password": password,
    }).then((value) {
      print(value);
      emit(RegisterSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(RegisterErrorState(error.toString()));
    });
  }

  bool isPassword = true;
  IconData suffIcon = Icons.visibility_outlined;

  void changePassword() {
    isPassword = !isPassword;
    suffIcon =
        isPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined;
    emit(RegisterPasswordVisibilityState());
  }
}
