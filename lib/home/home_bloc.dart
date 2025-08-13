import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import '../models/image_model.dart';
import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState.initial()) {
    on<FetchImages>((event, emit) async {
      emit(state.copyWith(isLoading: true, isError: false));
      try {
        final res = await http.get(Uri.parse('https://picsum.photos/v2/list?page=1&limit=10'));
        if (res.statusCode == 200) {
          final data = jsonDecode(res.body) as List;
          final images = data.map((e) => ImageModel.fromJson(e)).toList();
          emit(state.copyWith(images: images, isLoading: false));
        } else {
          emit(state.copyWith(isError: true, isLoading: false));
        }
      } catch (_) {
        emit(state.copyWith(isError: true, isLoading: false));
      }
    });
  }
}
