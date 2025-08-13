import '../models/image_model.dart';

class HomeState {
  final List<ImageModel> images;
  final bool isLoading;
  final bool isError;

  HomeState({required this.images, required this.isLoading, required this.isError});

  factory HomeState.initial() {
    return HomeState(images: [], isLoading: false, isError: false);
  }

  HomeState copyWith({
    List<ImageModel>? images,
    bool? isLoading,
    bool? isError,
  }) {
    return HomeState(
      images: images ?? this.images,
      isLoading: isLoading ?? this.isLoading,
      isError: isError ?? this.isError,
    );
  }
}
