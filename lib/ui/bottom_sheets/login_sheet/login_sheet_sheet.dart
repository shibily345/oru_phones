import 'package:flutter/material.dart';
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
class LoginSheet extends StackedView<LoginSheetModel> {
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
          physics: const NeverScrollableScrollPhysics(), // Disable swipe
          children: [
            numberSection(viewModel),
            otpSection(viewModel),
            nameSection(viewModel)
          ],
        ),
      ),
    );
  }

  Column numberSection(LoginSheetModel vm) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        // AppBar(
        //   backgroundColor: Colors.white,
        //   flexibleSpace: const ShowText(text: "Sign in to continue"),
        //   automaticallyImplyLeading: false,
        //   actions: [
        //     IconButton(onPressed: () {}, icon: const Icon(Icons.close))
        //   ],
        // ),
        // const CustomDivider(),
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
        const CustomTextFormField(
            label: "Enter Your Phone Number", hintText: "+91 Mobile Number"),
        verticalSpaceMedium,
        Row(
          children: [
            Checkbox(value: false, onChanged: (value) {}),
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
            vm.nextPage();
          },
        ),
        // verticalSpaceLarge,
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
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
        const ShowText(
            textAlign: TextAlign.center,
            text:
                "Please enter the 4 digital verification code sent to your mobile  number +91-7587329682 via SMS"),
        verticalSpaceMedium,
        Pinput(
          // You can pass your own SmsRetriever implementation based on any package
          // in this example we are using the SmartAuth
          // smsRetriever: smsRetriever,
          // controller: pinController,
          // focusNode: focusNode,
          // defaultPinTheme: defaultPinTheme,
          separatorBuilder: (index) => const SizedBox(width: 8),
          validator: (value) {
            return value == '2222' ? null : 'Pin is incorrect';
          },
          hapticFeedbackType: HapticFeedbackType.lightImpact,
          onCompleted: (pin) {
            debugPrint('onCompleted: $pin');
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
                // color: focusedBorderColor,
              ),
            ],
          ),
          // focusedPinTheme: defaultPinTheme.copyWith(
          //   decoration: defaultPinTheme.decoration!.copyWith(
          //     borderRadius: BorderRadius.circular(8),
          //     border: Border.all(color: focusedBorderColor),
          //   ),
          // ),
          // submittedPinTheme: defaultPinTheme.copyWith(
          //   decoration: defaultPinTheme.decoration!.copyWith(
          //     color: fillColor,
          //     borderRadius: BorderRadius.circular(19),
          //     border: Border.all(color: focusedBorderColor),
          //   ),
          // ),
          // errorPinTheme: defaultPinTheme.copyBorderWith(
          //   border: Border.all(color: Colors.redAccent),
          // ),
        ),
        verticalSpaceMedium,
        const ShowText(text: "Didin't Recive Otp"),
        const ShowText(text: "Recent it in 23 second"),
        verticalSpaceLarge,

        CustomButton(
          title: "Next ->",
          onPressed: () {
            vm.nextPage();
          },
        ),
        // verticalSpaceLarge,
      ],
    );
  }

  Column nameSection(LoginSheetModel vm) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        // AppBar(
        //   backgroundColor: Colors.white,
        //   flexibleSpace: const ShowText(text: "Sign in to continue"),
        //   automaticallyImplyLeading: false,
        //   actions: [
        //     IconButton(onPressed: () {}, icon: const Icon(Icons.close))
        //   ],
        // ),
        // const CustomDivider(),
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
        const CustomTextFormField(
            label: "Enter Tell Us Your Nmae", hintText: "Enter Your Name"),
        verticalSpaceMedium,
        verticalSpaceMedium,
        const Spacer(),
        CustomButton(
          title: "Confirm Name",
          onPressed: () {
            // vm.nextPage();
          },
        ),
        verticalSpaceLarge,
      ],
    );
  }

  @override
  LoginSheetModel viewModelBuilder(BuildContext context) => LoginSheetModel();
}
