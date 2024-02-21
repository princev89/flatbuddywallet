// ignore_for_file: must_be_immutable

part of 'account_creation_bloc.dart';

class AccountCreationState extends Equatable {
  AccountCreationState({
    this.group10198Controller,
    this.group10198OneController,
    this.group10198TwoController,
    this.group10198ThreeController,
    this.group10198FourController,
    this.accountCreationModelObj,
  });

  TextEditingController? group10198Controller;

  TextEditingController? group10198OneController;

  TextEditingController? group10198TwoController;

  TextEditingController? group10198ThreeController;

  TextEditingController? group10198FourController;

  AccountCreationModel? accountCreationModelObj;

  @override
  List<Object?> get props => [
        group10198Controller,
        group10198OneController,
        group10198TwoController,
        group10198ThreeController,
        group10198FourController,
        accountCreationModelObj,
      ];
  AccountCreationState copyWith({
    TextEditingController? group10198Controller,
    TextEditingController? group10198OneController,
    TextEditingController? group10198TwoController,
    TextEditingController? group10198ThreeController,
    TextEditingController? group10198FourController,
    AccountCreationModel? accountCreationModelObj,
  }) {
    return AccountCreationState(
      group10198Controller: group10198Controller ?? this.group10198Controller,
      group10198OneController:
          group10198OneController ?? this.group10198OneController,
      group10198TwoController:
          group10198TwoController ?? this.group10198TwoController,
      group10198ThreeController:
          group10198ThreeController ?? this.group10198ThreeController,
      group10198FourController:
          group10198FourController ?? this.group10198FourController,
      accountCreationModelObj:
          accountCreationModelObj ?? this.accountCreationModelObj,
    );
  }
}
