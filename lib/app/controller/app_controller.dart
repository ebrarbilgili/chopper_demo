// ignore_for_file: unnecessary_type_check

import 'package:bloc/bloc.dart';
import 'package:chopper/chopper.dart';
import 'package:chopper_demo/app/model/app.model.dart';
import 'package:chopper_demo/app/service/app.service.dart';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.dart';
part 'app_controller.freezed.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit({required this.appService}) : super(const AppState.initial()) {
    fetch();
  }

  final AppService appService;

  Future<void> fetch() async {
    emit(const AppState.loading());

    final response = await appService.getAppModel();

    if (response.isSuccessful) {
      print(response.body);
      emit(AppState.completed(response.body!));
    } else {
      emit(const AppState.initial());
    }
  }
}
