import '../models/listcheckmark1_item_model.dart';
import 'package:flatbuddywallet/core/app_export.dart';
import 'package:flatbuddywallet/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listcheckmark1ItemWidget extends StatelessWidget {
  Listcheckmark1ItemWidget(this.listcheckmark1ItemModelObj);

  Listcheckmark1ItemModel listcheckmark1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIconButton(
          height: 56,
          width: 56,
          child: CustomImageView(
            svgPath: ImageConstant.imgCheckmark56x56,
          ),
        ),
        Container(
          width: getHorizontalSize(
            79,
          ),
          margin: getMargin(
            left: 16,
            top: 5,
            bottom: 1,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                listcheckmark1ItemModelObj.salaryTxt,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtGilroySemiBold18,
              ),
              Padding(
                padding: getPadding(
                  top: 9,
                ),
                child: Text(
                  listcheckmark1ItemModelObj.dateTxt,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtGilroyRegular14Bluegray400,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: getPadding(
            top: 17,
            bottom: 16,
          ),
          child: Text(
            listcheckmark1ItemModelObj.priceTxt,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtGilroySemiBold18Green600,
          ),
        ),
      ],
    );
  }
}
