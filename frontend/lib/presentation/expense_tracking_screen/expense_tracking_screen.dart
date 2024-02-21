import '../expense_tracking_screen/widgets/listcheckmark_item_widget.dart';
import 'bloc/expense_tracking_bloc.dart';
import 'models/expense_tracking_model.dart';
import 'models/listcheckmark_item_model.dart';
import 'package:flatbuddywallet/core/app_export.dart';
import 'package:flatbuddywallet/widgets/app_bar/appbar_image.dart';
import 'package:flatbuddywallet/widgets/app_bar/appbar_title.dart';
import 'package:flatbuddywallet/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ExpenseTrackingScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<ExpenseTrackingBloc>(
        create: (context) => ExpenseTrackingBloc(ExpenseTrackingState(
            expenseTrackingModelObj: ExpenseTrackingModel()))
          ..add(ExpenseTrackingInitialEvent()),
        child: ExpenseTrackingScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(53),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 12, bottom: 17),
                    onTap: () {
                      onTapArrowleft(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "msg_expense_tracking".tr),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgOverflowmenu,
                      margin:
                          getMargin(left: 16, top: 12, right: 16, bottom: 17))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, right: 16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(52),
                          width: getHorizontalSize(396),
                          margin: getMargin(top: 20),
                          child:
                              Stack(alignment: Alignment.bottomLeft, children: [
                            Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                    padding: getPadding(
                                        left: 53,
                                        top: 15,
                                        right: 53,
                                        bottom: 15),
                                    decoration:
                                        AppDecoration.outlineBluegray100,
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_last_month".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtGilroyMedium16)
                                        ]))),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                    padding: getPadding(left: 49),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_this_month".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtGilroyMedium16BlueA700),
                                          Padding(
                                              padding: getPadding(top: 18),
                                              child: SizedBox(
                                                  width: getHorizontalSize(100),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(2),
                                                      thickness:
                                                          getVerticalSize(2),
                                                      color: ColorConstant
                                                          .blueA700)))
                                        ])))
                          ])),
                      Container(
                          margin: getMargin(top: 21),
                          padding: getPadding(all: 16),
                          decoration: AppDecoration.fillBlueA700.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder6),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 3),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_total_expense".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtGilroyMedium16WhiteA700),
                                          Padding(
                                              padding: getPadding(top: 13),
                                              child: Text("lbl_2145_00".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtGilroyBold36)),
                                          Padding(
                                              padding: getPadding(top: 14),
                                              child: Text(
                                                  "msg_30_from_transfer".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtGilroyMedium16WhiteA700)),
                                          Padding(
                                              padding: getPadding(top: 12),
                                              child: Text(
                                                  "lbl_70_from_salary".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtGilroyMedium16WhiteA700))
                                        ])),
                                Padding(
                                    padding:
                                        getPadding(top: 7, right: 8, bottom: 7),
                                    child: Container(
                                        height: getSize(131),
                                        width: getSize(131),
                                        child: CircularProgressIndicator(
                                            value: 0.5,
                                            backgroundColor:
                                                ColorConstant.whiteA70067,
                                            color: ColorConstant.whiteA700)))
                              ])),
                      Padding(
                          padding: getPadding(top: 27),
                          child: Text("msg_recent_transaction".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroySemiBold18)),
                      Padding(
                          padding: getPadding(top: 21),
                          child: BlocSelector<ExpenseTrackingBloc,
                                  ExpenseTrackingState, ExpenseTrackingModel?>(
                              selector: (state) =>
                                  state.expenseTrackingModelObj,
                              builder: (context, expenseTrackingModelObj) {
                                return ListView.separated(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                          height: getVerticalSize(16));
                                    },
                                    itemCount: expenseTrackingModelObj
                                            ?.listcheckmarkItemList.length ??
                                        0,
                                    itemBuilder: (context, index) {
                                      ListcheckmarkItemModel model =
                                          expenseTrackingModelObj
                                                      ?.listcheckmarkItemList[
                                                  index] ??
                                              ListcheckmarkItemModel();
                                      return ListcheckmarkItemWidget(model);
                                    });
                              }))
                    ]))));
  }

  onTapArrowleft(BuildContext context) {
    NavigatorService.goBack();
  }
}
