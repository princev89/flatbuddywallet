import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:flatbuddywallet/presentation/account_creation_screen/models/account_creation_model.dart';
part 'account_creation_event.dart';
part 'account_creation_state.dart';

class AccountCreationBloc
    extends Bloc<AccountCreationEvent, AccountCreationState> {
  AccountCreationBloc(AccountCreationState initialState) : super(initialState) {
    on<AccountCreationInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AccountCreationInitialEvent event,
    Emitter<AccountCreationState> emit,
  ) async {
    emit(state.copyWith(
      group10198Controller: TextEditingController(),
      group10198OneController: TextEditingController(),
      group10198TwoController: TextEditingController(),
      group10198ThreeController: TextEditingController(),
      group10198FourController: TextEditingController(),
    ));
  }
}
