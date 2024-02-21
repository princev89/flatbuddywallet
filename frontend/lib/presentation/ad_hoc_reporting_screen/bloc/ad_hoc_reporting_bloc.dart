import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listgroup977_item_model.dart';
import '../models/listtext_item_model.dart';
import 'package:flatbuddywallet/presentation/ad_hoc_reporting_screen/models/ad_hoc_reporting_model.dart';
part 'ad_hoc_reporting_event.dart';
part 'ad_hoc_reporting_state.dart';

class AdHocReportingBloc
    extends Bloc<AdHocReportingEvent, AdHocReportingState> {
  AdHocReportingBloc(AdHocReportingState initialState) : super(initialState) {
    on<AdHocReportingInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AdHocReportingInitialEvent event,
    Emitter<AdHocReportingState> emit,
  ) async {
    emit(state.copyWith(
        adHocReportingModelObj: state.adHocReportingModelObj?.copyWith(
      listgroup977ItemList: fillListgroup977ItemList(),
      listtextItemList: fillListtextItemList(),
    )));
  }

  List<Listgroup977ItemModel> fillListgroup977ItemList() {
    return List.generate(3, (index) => Listgroup977ItemModel());
  }

  List<ListtextItemModel> fillListtextItemList() {
    return List.generate(3, (index) => ListtextItemModel());
  }
}
