import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listcheckmark1_item_model.dart';
import 'package:flatbuddywallet/presentation/budgeting_forecasting_screen/models/budgeting_forecasting_model.dart';
part 'budgeting_forecasting_event.dart';
part 'budgeting_forecasting_state.dart';

class BudgetingForecastingBloc
    extends Bloc<BudgetingForecastingEvent, BudgetingForecastingState> {
  BudgetingForecastingBloc(BudgetingForecastingState initialState)
      : super(initialState) {
    on<BudgetingForecastingInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<BudgetingForecastingState> emit,
  ) {
    emit(state.copyWith(
      isCheckbox: event.value,
    ));
  }

  List<Listcheckmark1ItemModel> fillListcheckmark1ItemList() {
    return List.generate(8, (index) => Listcheckmark1ItemModel());
  }

  _onInitialize(
    BudgetingForecastingInitialEvent event,
    Emitter<BudgetingForecastingState> emit,
  ) async {
    emit(state.copyWith(
      isCheckbox: false,
    ));
    emit(state.copyWith(
        budgetingForecastingModelObj:
            state.budgetingForecastingModelObj?.copyWith(
      listcheckmark1ItemList: fillListcheckmark1ItemList(),
    )));
  }
}
