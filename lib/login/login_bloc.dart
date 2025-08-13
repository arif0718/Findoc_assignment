import 'package:flutter_bloc/flutter_bloc.dart';
import 'login_event.dart';
import 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState.initial()) {
    on<EmailChanged>((event, emit) {
      final emailValid = RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(event.email);
      emit(state.copyWith(email: event.email, isEmailValid: emailValid));
    });

    on<PasswordChanged>((event, emit) {
      final passwordValid = RegExp(
        r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&]).{8,}$'
      ).hasMatch(event.password);
      emit(state.copyWith(password: event.password, isPasswordValid: passwordValid));
    });

    on<LoginSubmitted>((event, emit) async {
      emit(state.copyWith(isSubmitting: true, isFailure: false, isSuccess: false));
      await Future.delayed(const Duration(seconds: 1)); // Simulate API
      if (state.isEmailValid && state.isPasswordValid) {
        emit(state.copyWith(isSubmitting: false, isSuccess: true));
      } else {
        emit(state.copyWith(isSubmitting: false, isFailure: true));
      }
    });
  }
}
