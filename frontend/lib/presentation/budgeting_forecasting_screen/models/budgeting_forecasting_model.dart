import 'package:equatable/equatable.dart';
import 'listcheckmark1_item_model.dart';

// ignore: must_be_immutable
class BudgetingForecastingModel extends Equatable {
  BudgetingForecastingModel({this.listcheckmark1ItemList = const []});

  List<Listcheckmark1ItemModel> listcheckmark1ItemList;

  BudgetingForecastingModel copyWith(
      {List<Listcheckmark1ItemModel>? listcheckmark1ItemList}) {
    return BudgetingForecastingModel(
      listcheckmark1ItemList:
          listcheckmark1ItemList ?? this.listcheckmark1ItemList,
    );
  }

  @override
  List<Object?> get props => [listcheckmark1ItemList];
}
