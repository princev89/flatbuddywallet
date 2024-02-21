import 'package:equatable/equatable.dart';
import 'package:flatbuddywallet/presentation/email_login_screen/models/email_login_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'email_login_event.dart';
part 'email_login_state.dart';

class EmailLoginBloc extends Bloc<EmailLoginEvent, EmailLoginState> {
  EmailLoginBloc(EmailLoginState initialState) : super(initialState) {
    on<EmailLoginInitialEvent>(_onInitialize);
  }

  _onInitialize(
    EmailLoginEvent event,
    Emitter<EmailLoginState> emit,
  ) async {
    emit(state.copyWith(
      group10198Controller: TextEditingController(),
      group10198OneController: TextEditingController(),
      isShowPassword: true,
    ));
  }
}
