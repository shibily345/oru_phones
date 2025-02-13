import 'package:flutter/material.dart';
import 'package:oru_phones/ui/common/ui_helpers.dart';
import 'package:oru_phones/ui/views/home/widgets/default.dart';
import 'package:oru_phones/ui/views/login/login_view.form.dart';
import 'package:oru_phones/ui/views/login/number_validate.dart';
import 'package:pinput/pinput.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'login_viewmodel.dart';

@FormView(fields: [
  FormTextField(name: 'numberInput', validator: NumberValidate.numberValidator),
  FormTextField(name: 'otpInput'),
  FormTextField(name: 'nameInput'),
])
class LoginView extends StackedView<LoginViewModel> with $LoginView {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LoginViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
        appBar: AppBar(),
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: PageView(
            controller: viewModel.pageController,
            physics: const NeverScrollableScrollPhysics(), // Disable swipe
            children: [
              numberSection(viewModel, context, numberInputController),
              otpSection(viewModel),
              nameSection(viewModel, context)
            ],
          ),
        ));
  }

  Widget numberSection(LoginViewModel vm, BuildContext ctx,
      TextEditingController numberController) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        verticalSpaceLarge,
        Center(
            child: Image.asset(
          "assets/images/logo.png",
          width: 100,
        )),
        verticalSpaceLarge,
        verticalSpaceLarge,
        ShowText(
          text: "Welcome",
          fontWeight: FontWeight.bold,
          color: Theme.of(ctx).primaryColor,
          fontSize: 28,
        ),
        ShowText(
          text: "Sign in to Continue",
          fontWeight: FontWeight.normal,
          color: Theme.of(ctx).shadowColor,
          fontSize: 14,
        ),
        const Spacer(),
        CustomTextFormField(
            controller: numberController,
            prefixIcon: const SizedBox(
              width: 30,
              child: Center(
                child: ShowText(text: "+91"),
              ),
            ),
            // validate: loginviewva,
            keyboardType: const TextInputType.numberWithOptions(),
            label: "Enter Your Phone Number",
            hintText: "Mobile Number"),
        verticalSpaceMedium,
        verticalSpaceLarge,
        verticalSpaceLarge,
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
            // vm.nextPage();
          },
        ),
        verticalSpaceLarge,
        verticalSpaceLarge,
        verticalSpaceLarge,
      ],
    );
  }

  Column otpSection(LoginViewModel vm) {
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
        const Spacer(),
        ShowText(
            textAlign: TextAlign.center,
            maxLines: 2,
            text:
                "Please enter the 4 digital verification code sent to your mobile  number +91-${numberInputController.text} via SMS"),
        verticalSpaceLarge,
        const Spacer(),
        verticalSpaceLarge,
        verticalSpaceMedium,
        Pinput(
          // You can pass your own SmsRetriever implementation based on any package
          // in this example we are using the SmartAuth
          // smsRetriever: smsRetriever,
          controller: otpInputController,
          focusNode: otpInputFocusNode,
          // defaultPinTheme: defaultPinTheme,
          separatorBuilder: (index) => const SizedBox(width: 8),
          // validator: (value) {
          //   return vm.validatedOtp! ? "Success" : 'Pin is incorrect';
          // },
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
        verticalSpaceLarge,
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
        verticalSpaceLarge,
        verticalSpaceLarge,
        verticalSpaceLarge,
      ],
    );
  }

  Column nameSection(LoginViewModel vm, BuildContext ctx) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        verticalSpaceLarge,
        Center(
            child: Image.asset(
          "assets/images/logo.png",
          width: 100,
        )),
        verticalSpaceLarge,
        verticalSpaceLarge,
        ShowText(
          text: "Welcome",
          fontWeight: FontWeight.bold,
          color: Theme.of(ctx).primaryColor,
          fontSize: 28,
        ),
        ShowText(
          text: "Sign in to Continue",
          fontWeight: FontWeight.normal,
          color: Theme.of(ctx).shadowColor,
          fontSize: 14,
        ),
        verticalSpaceMedium, const Spacer(),
        CustomTextFormField(
            controller: nameInputController,
            label: "Tell Us Your Name",
            hintText: "Enter Your Name"),
        verticalSpaceMedium,
        verticalSpaceMedium,
        // const Spacer(),
        CustomButton(
          title: "Confirm Name",
          onPressed: () {
            vm.updateName(nameInputController.text);
            // vm.nextPage();
          },
        ),
        const Spacer(),
        verticalSpaceLarge,
      ],
    );
  }

  @override
  void onViewModelReady(LoginViewModel viewModel) {
    syncFormWithViewModel(viewModel);
  }

  @override
  LoginViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoginViewModel();
}
