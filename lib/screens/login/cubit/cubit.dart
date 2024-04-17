import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mab/screens/login/cubit/states.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(InitialLoginState());

  static LoginCubit get(context) => BlocProvider.of(context);
}
