import 'package:equatable/equatable.dart';
import 'listcheckmark_item_model.dart';

// ignore: must_be_immutable
class ExpenseTrackingModel extends Equatable {
  ExpenseTrackingModel({this.listcheckmarkItemList = const []});

  List<ListcheckmarkItemModel> listcheckmarkItemList;

  ExpenseTrackingModel copyWith(
      {List<ListcheckmarkItemModel>? listcheckmarkItemList}) {
    return ExpenseTrackingModel(
      listcheckmarkItemList:
          listcheckmarkItemList ?? this.listcheckmarkItemList,
    );
  }

  @override
  List<Object?> get props => [listcheckmarkItemList];
}
