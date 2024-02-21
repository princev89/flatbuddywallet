import 'bloc/email_login_bloc.dart';
import 'models/email_login_model.dart';
import 'package:flatbuddywallet/core/app_export.dart';
import 'package:flatbuddywallet/core/utils/validation_functions.dart';
import 'package:flatbuddywallet/widgets/app_bar/appbar_image.dart';
import 'package:flatbuddywallet/widgets/app_bar/appbar_title.dart';
import 'package:flatbuddywallet/widgets/app_bar/custom_app_bar.dart';
import 'package:flatbuddywallet/widgets/custom_button.dart';
import 'package:flatbuddywallet/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class EmailLoginScreen extends StatelessWidget {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<EmailLoginBloc>(
        create: (context) => EmailLoginBloc(
            EmailLoginState(emailLoginModelObj: EmailLoginModel()))
          ..add(EmailLoginInitialEvent()),
        child: EmailLoginScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(53),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 13, bottom: 16),
                    onTap: () {
                      // onTapArrowleft1(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_email_sign_in".tr)),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 16, top: 23, right: 16, bottom: 23),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("lbl_email".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroyMedium16Bluegray900),
                          BlocSelector<EmailLoginBloc, EmailLoginState,
                                  TextEditingController?>(
                              selector: (state) => state.group10198Controller,
                              builder: (context, group10198Controller) {
                                return CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller: group10198Controller,
                                    hintText: "msg_enter_your_email".tr,
                                    margin: getMargin(top: 8),
                                    textInputType: TextInputType.emailAddress,
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidEmail(value,
                                              isRequired: true))) {
                                        return "Please enter valid email";
                                      }
                                      return null;
                                    });
                              }),
                          Padding(
                              padding: getPadding(top: 18),
                              child: Text("lbl_password".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtGilroyMedium16Bluegray900)),
                          BlocBuilder<EmailLoginBloc, EmailLoginState>(
                              builder: (context, state) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: state.group10198OneController,
                                hintText: "lbl_enter_password".tr,
                                margin: getMargin(top: 7),
                                padding: TextFormFieldPadding.PaddingT12,
                                textInputAction: TextInputAction.done,
                                textInputType: TextInputType.visiblePassword,
                                suffix: InkWell(
                                    onTap: () {
                                      context.read<EmailLoginBloc>().add(
                                          ChangePasswordVisibilityEvent(
                                              value: !state.isShowPassword));
                                    },
                                    child: Container(
                                        margin: getMargin(all: 12),
                                        child: CustomImageView(
                                            svgPath: state.isShowPassword
                                                ? ImageConstant.imgEye
                                                : ImageConstant.imgEye))),
                                suffixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(44)),
                                validator: (value) {
                                  if (value == null ||
                                      (!isValidPassword(value,
                                          isRequired: true))) {
                                    return "Please enter valid password";
                                  }
                                  return null;
                                },
                                isObscureText: state.isShowPassword);
                          }),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                  padding: getPadding(top: 12, right: 6),
                                  child: Text("msg_forgot_password".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtGilroyMedium14BlueA700))),
                          CustomButton(
                              onTap: () {
                                //get access of email and password field
                              },
                              height: getVerticalSize(50),
                              text: "lbl_sign_in".tr,
                              margin: getMargin(top: 25, bottom: 5))
                        ])))));
  }

  onTapArrowleft1(BuildContext context) {
    NavigatorService.goBack();
  }
}
