import 'package:groceries_task/login/end%20points/end_points.dart';
import 'package:groceries_task/login/login%20cubit/states.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries_task/login/login%20dio/dio_helper.dart';
import 'package:groceries_task/models/user_model.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);
  late UserModel userModel;

  void Login({required String username, required String password}) {
    emit(AppLoadingState());

    DioHelper.postData(url: LOGIN, data: {'user_name': username, 'password': password})
        .then((value) {
      userModel = value.data;
      emit(AppSuccessState(userModel));
    }).catchError((error) {
      print(error.toString());
      emit(AppFailedState(error));
    });
  }
}
