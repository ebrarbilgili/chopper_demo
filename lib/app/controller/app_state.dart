part of 'app_controller.dart';

@freezed
abstract class AppState with _$AppState {
  const factory AppState.initial() = _Initial;
  const factory AppState.loading() = _Loading;
  const factory AppState.completed(AppModel model) = _Completed;
}
