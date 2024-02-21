// ignore_for_file: must_be_immutable

part of 'expense_tracking_bloc.dart';

@immutable
abstract class ExpenseTrackingEvent extends Equatable {}

class ExpenseTrackingInitialEvent extends ExpenseTrackingEvent {
  @override
  List<Object?> get props => [];
}
