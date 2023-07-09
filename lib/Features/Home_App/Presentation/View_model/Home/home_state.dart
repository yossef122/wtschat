part of 'home_cubit.dart';

abstract class HomeState {}

class HomeInitial extends HomeState {}


class PickedStoryImageSuccessState extends HomeState {}

class PickedStoryImageErrorState extends HomeState {}

class UploadStoryLoadingState extends HomeState {}

class UploadStorySuccessState extends HomeState {}

class UploadStoryErrorState extends HomeState {}

class UploadStoryErrorState2 extends HomeState {}

class SaveDataSuccess extends HomeState {}

class GetStoryLoadingState extends HomeState {}

class GetStorySuccessState extends HomeState {}

class GetStoryErrorState extends HomeState {
  final String error;

  GetStoryErrorState(this.error);
}

class SetStoryErrorState extends HomeState {}

class CreateStoryErrorState extends HomeState {
  final String error;

  CreateStoryErrorState(this.error);
}

class CreateStorySuccessState extends HomeState {}

class SharedStoryChangeState extends HomeState {}