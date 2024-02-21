import 'bloc/account_creation_bloc.dart';
import 'models/account_creation_model.dart';
import 'package:flatbuddywallet/core/app_export.dart';
import 'package:flatbuddywallet/core/utils/validation_functions.dart';
import 'package:flatbuddywallet/widgets/custom_button.dart';
import 'package:flatbuddywallet/widgets/custom_icon_button.dart';
import 'package:flatbuddywallet/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class AccountCreationScreen extends StatelessWidget {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<AccountCreationBloc>(
      create: (context) => AccountCreationBloc(AccountCreationState(
        accountCreationModelObj: AccountCreationModel(),
      ))
        ..add(AccountCreationInitialEvent()),
      child: AccountCreationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray50,
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: getPadding(
              left: 16,
              top: 24,
              right: 16,
              bottom: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: getSize(
                      150,
                    ),
                    width: getSize(
                      150,
                    ),
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse5150x150,
                          height: getSize(
                            150,
                          ),
                          width: getSize(
                            150,
                          ),
                          radius: BorderRadius.circular(
                            getHorizontalSize(
                              75,
                            ),
                          ),
                          alignment: Alignment.center,
                        ),
                        CustomIconButton(
                          height: 30,
                          width: 30,
                          margin: getMargin(
                            top: 5,
                            right: 2,
                          ),
                          variant: IconButtonVariant.FillBlueA700,
                          shape: IconButtonShape.CircleBorder15,
                          padding: IconButtonPadding.PaddingAll3,
                          alignment: Alignment.topRight,
                          child: CustomImageView(
                            svgPath: ImageConstant.imgForward,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 26,
                  ),
                  child: Text(
                    "lbl_first_name".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtGilroyMedium16Bluegray900,
                  ),
                ),
                BlocSelector<AccountCreationBloc, AccountCreationState,
                    TextEditingController?>(
                  selector: (state) => state.group10198Controller,
                  builder: (context, group10198Controller) {
                    return CustomTextFormField(
                      focusNode: FocusNode(),
                      controller: group10198Controller,
                      hintText: "msg_enter_first_name".tr,
                      margin: getMargin(
                        top: 8,
                      ),
                      validator: (value) {
                        if (!isText(value)) {
                          return "Please enter valid text";
                        }
                        return null;
                      },
                    );
                  },
                ),
                Padding(
                  padding: getPadding(
                    top: 19,
                  ),
                  child: Text(
                    "lbl_last_name".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtGilroyMedium16Bluegray900,
                  ),
                ),
                BlocSelector<AccountCreationBloc, AccountCreationState,
                    TextEditingController?>(
                  selector: (state) => state.group10198OneController,
                  builder: (context, group10198OneController) {
                    return CustomTextFormField(
                      focusNode: FocusNode(),
                      controller: group10198OneController,
                      hintText: "lbl_enter_last_name".tr,
                      margin: getMargin(
                        top: 7,
                      ),
                      validator: (value) {
                        if (!isText(value)) {
                          return "Please enter valid text";
                        }
                        return null;
                      },
                    );
                  },
                ),
                Padding(
                  padding: getPadding(
                    top: 18,
                  ),
                  child: Text(
                    "lbl_mobile_number".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtGilroyMedium16Bluegray900,
                  ),
                ),
                BlocSelector<AccountCreationBloc, AccountCreationState,
                    TextEditingController?>(
                  selector: (state) => state.group10198TwoController,
                  builder: (context, group10198TwoController) {
                    return CustomTextFormField(
                      focusNode: FocusNode(),
                      controller: group10198TwoController,
                      hintText: "msg_enter_mobile_number".tr,
                      margin: getMargin(
                        top: 8,
                      ),
                      textInputType: TextInputType.phone,
                      validator: (value) {
                        if (!isValidPhone(value)) {
                          return "Please enter valid phone number";
                        }
                        return null;
                      },
                    );
                  },
                ),
                Padding(
                  padding: getPadding(
                    top: 18,
                  ),
                  child: Text(
                    "lbl_email_id".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtGilroyMedium16Bluegray900,
                  ),
                ),
                BlocSelector<AccountCreationBloc, AccountCreationState,
                    TextEditingController?>(
                  selector: (state) => state.group10198ThreeController,
                  builder: (context, group10198ThreeController) {
                    return CustomTextFormField(
                      focusNode: FocusNode(),
                      controller: group10198ThreeController,
                      hintText: "lbl_enter_email_id".tr,
                      margin: getMargin(
                        top: 8,
                      ),
                      textInputType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null ||
                            (!isValidEmail(value, isRequired: true))) {
                          return "Please enter valid email";
                        }
                        return null;
                      },
                    );
                  },
                ),
                Padding(
                  padding: getPadding(
                    top: 18,
                  ),
                  child: Text(
                    "lbl_set_password".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtGilroyMedium16Bluegray900,
                  ),
                ),
                BlocSelector<AccountCreationBloc, AccountCreationState,
                    TextEditingController?>(
                  selector: (state) => state.group10198FourController,
                  builder: (context, group10198FourController) {
                    return CustomTextFormField(
                      focusNode: FocusNode(),
                      controller: group10198FourController,
                      hintText: "lbl_set_password".tr,
                      margin: getMargin(
                        top: 8,
                      ),
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.visiblePassword,
                      validator: (value) {
                        if (value == null ||
                            (!isValidPassword(value, isRequired: true))) {
                          return "Please enter valid password";
                        }
                        return null;
                      },
                      isObscureText: true,
                    );
                  },
                ),
                CustomButton(
                  height: getVerticalSize(
                    50,
                  ),
                  text: "lbl_create_account".tr,
                  margin: getMargin(
                    top: 24,
                    bottom: 5,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
