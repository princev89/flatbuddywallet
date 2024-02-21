import 'package:equatable/equatable.dart';
import 'listgroup977_item_model.dart';
import 'listtext_item_model.dart';

// ignore: must_be_immutable
class AdHocReportingModel extends Equatable {
  AdHocReportingModel(
      {this.listgroup977ItemList = const [], this.listtextItemList = const []});

  List<Listgroup977ItemModel> listgroup977ItemList;

  List<ListtextItemModel> listtextItemList;

  AdHocReportingModel copyWith(
      {List<Listgroup977ItemModel>? listgroup977ItemList,
      List<ListtextItemModel>? listtextItemList}) {
    return AdHocReportingModel(
      listgroup977ItemList: listgroup977ItemList ?? this.listgroup977ItemList,
      listtextItemList: listtextItemList ?? this.listtextItemList,
    );
  }

  @override
  List<Object?> get props => [listgroup977ItemList, listtextItemList];
}
