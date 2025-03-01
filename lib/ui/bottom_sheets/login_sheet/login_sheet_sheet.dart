import 'package:flutter/material.dart';
import 'package:oru_phones/ui/bottom_sheets/login_sheet/login_sheet_sheet.form.dart';
import 'package:oru_phones/ui/common/ui_helpers.dart';
import 'package:oru_phones/ui/views/home/widgets/default.dart';
import 'package:pinput/pinput.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import 'login_sheet_sheet_model.dart';

@FormView(fields: [
  FormTextField(name: 'numberInput'),
  FormTextField(name: 'otpInput'),
  FormTextField(name: 'nameInput'),
])
class LoginSheet extends StackedView<LoginSheetModel> with $LoginSheet {
  final Function(SheetResponse response)? completer;
  final SheetRequest request;
  const LoginSheet({
    Key? key,
    required this.completer,
    required this.request,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LoginSheetModel viewModel,
    Widget? child,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: SizedBox(
        height: 380,
        child: PageView(
          controller: viewModel.pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            numberSection(viewModel, context, numberInputController),
            otpSection(viewModel),
            nameSection(viewModel)
          ],
        ),
      ),
    );
  }

  Column numberSection(LoginSheetModel vm, BuildContext ctx,
      TextEditingController numberController) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const ShowText(
              text: "Sign in to continue",
              fontSize: 18,
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.close))
          ],
        ),
        const CustomDivider(),
        verticalSpaceMedium,
        CustomTextFormField(
            controller: numberController,
            prefixIcon: const SizedBox(
              width: 30,
              child: Center(
                child: ShowText(text: "+91"),
              ),
            ),
            keyboardType: const TextInputType.numberWithOptions(),
            label: "Enter Your Phone Number",
            hintText: "Mobile Number"),
        verticalSpaceMedium,
        Row(
          children: [
            Checkbox(
                value: vm.aceepted,
                onChanged: (value) {
                  vm.acceptTnC(value);
                }),
            const Text("Accept ", style: TextStyle(fontSize: 14)),
            const Text("Terms and Condition",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue)),
          ],
        ),
        CustomButton(
          title: "Next ->",
          onPressed: () {
            vm.sendOtp(int.parse(numberController.text));
          },
        ),
      ],
    );
  }

  Column otpSection(LoginSheetModel vm) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            IconButton(
                onPressed: () {
                  vm.previousPage();
                },
                icon: const Icon(Icons.arrow_back_ios)),
            const ShowText(
              text: "Verify Otp",
              fontSize: 18,
            ),
            const Spacer(),
            IconButton(onPressed: () {}, icon: const Icon(Icons.close))
          ],
        ),
        verticalSpaceMedium,
        ShowText(
            textAlign: TextAlign.center,
            maxLines: 2,
            text:
                "Please enter the 4 digital verification code sent to your mobile  number +91-${numberInputController.text} via SMS"),
        verticalSpaceMedium,
        Pinput(
          controller: otpInputController,
          focusNode: otpInputFocusNode,
          separatorBuilder: (index) => const SizedBox(width: 8),
          hapticFeedbackType: HapticFeedbackType.lightImpact,
          onCompleted: (pin) {
            vm.validateOtp(
                num.parse(pin), num.parse(numberInputController.text));
          },
          onChanged: (value) {
            debugPrint('onChanged: $value');
          },
          cursor: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 9),
                width: 22,
                height: 1,
              ),
            ],
          ),
        ),
        verticalSpaceMedium,
        const ShowText(text: "Didin't Recive Otp"),
        const ShowText(text: "Recent it in 23 second"),
        verticalSpaceLarge,
        CustomButton(
          title: "Next ->",
          onPressed: () {
            vm.checkLogin();
          },
        ),
      ],
    );
  }

  Column nameSection(LoginSheetModel vm) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const ShowText(
              text: "Sign in to continue",
              fontSize: 18,
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.close))
          ],
        ),
        const CustomDivider(),
        verticalSpaceMedium,
        CustomTextFormField(
            controller: nameInputController,
            label: "Enter Tell Us Your Nmae",
            hintText: "Enter Your Name"),
        verticalSpaceMedium,
        verticalSpaceMedium,
        const Spacer(),
        CustomButton(
          title: "Confirm Name",
          onPressed: () {
            if (nameInputController.text.isNotEmpty) {
              vm.updateName(nameInputController.text);
            }
          },
        ),
        verticalSpaceLarge,
      ],
    );
  }

  @override
  LoginSheetModel viewModelBuilder(BuildContext context) => LoginSheetModel();
}
