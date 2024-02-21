// ignore_for_file: must_be_immutable

part of 'account_creation_bloc.dart';

@immutable
abstract class AccountCreationEvent extends Equatable {}

class AccountCreationInitialEvent extends AccountCreationEvent {
  @override
  List<Object?> get props => [];
}
