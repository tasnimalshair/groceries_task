import 'package:groceries_task/models/user_model.dart';

abstract class AppStates {}

class AppInitialState extends AppStates {}

class AppLoadingState extends AppStates {}

class AppSuccessState extends AppStates {
  final UserModel model;
  AppSuccessState(this.model);
}

class AppFailedState extends AppStates {
  final String error;
  AppFailedState(this.error);
}
