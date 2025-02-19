import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: viewModel.currentPage == 0
              ? const SizedBox()
              : BackButton(
                  onPressed: () {
                    viewModel.nextPage();
                  },
                ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.maybePop(context);
                },
                icon: const Icon(Icons.close)),
            horizontalSpaceSmall
          ],
        ),
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: Padding(
            padding: const EdgeInsets.all(18.0),
            child: SingleChildScrollView(
              child: SizedBox(
                height: screenHeight(context),
                child: PageView(
                  controller: viewModel.pageController,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    _numberSection(viewModel, context, numberInputController),
                    _otpSection(viewModel, context),
                    _nameSection(viewModel, context)
                  ],
                ),
              ),
            )));
  }

  Widget _numberSection(LoginViewModel vm, BuildContext ctx,
      TextEditingController numberController) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        verticalSpaceMedium,
        Center(
            child: Image.asset(
          "assets/images/logo.png",
          width: 140,
        )),
        verticalSpaceLarge,
        verticalSpaceSmall,
        ShowText(
          text: "Welcome",
          fontWeight: FontWeight.bold,
          color: Theme.of(ctx).primaryColor,
          fontSize: 34,
        ),
        ShowText(
          text: "Sign in to Continue",
          fontWeight: FontWeight.normal,
          color: Theme.of(ctx).shadowColor.withAlpha(60),
          fontSize: 16,
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
          titleWidget: vm.isBusy ? const CircularProgressIndicator() : null,
          title: "Next ->",
          onPressed: () {
            vm.sendOtp(int.parse(numberController.text));
          },
        ),
        verticalSpaceLarge,
        verticalSpaceLarge,
        verticalSpaceLarge,
        verticalSpaceLarge,
      ],
    );
  }

  Column _otpSection(LoginViewModel vm, BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        verticalSpaceMedium,
        Center(
            child: Image.asset(
          "assets/images/logo.png",
          width: 140.w,
        )),
        verticalSpaceMassive,
        const ShowText(
          text: "Verify Mobile Number...",
          fontSize: 24,
          color: Color.fromARGB(255, 1, 31, 83),
          fontWeight: FontWeight.w700,
        ),
        verticalSpaceSmall,
        ShowText(
            textAlign: TextAlign.center,
            maxLines: 2,
            text:
                "Please enter the 4 digital verification code sent to your mobile  number +91-${numberInputController.text} via SMS"),
        verticalSpaceLarge,
        verticalSpaceMedium,
        Pinput(
          controller: otpInputController,
          focusNode: otpInputFocusNode,
          showCursor: true,
          defaultPinTheme: PinTheme(
            width: 50.w,
            height: 50.w,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Theme.of(context).splashColor),
                borderRadius: BorderRadius.circular(10)),
          ),
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
        verticalSpaceLarge,
        verticalSpaceMedium,
        const ShowText(text: "Didin't Recive Otp"),
        const ShowText(text: "Recent it in 23 second"),
        verticalSpaceLarge,
        CustomButton(
          titleWidget: vm.isBusy
              ? const CircularProgressIndicator(
                  color: Colors.white,
                )
              : null,
          title: "Verify Otp",
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

  Column _nameSection(LoginViewModel vm, BuildContext ctx) {
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
        verticalSpaceMedium,
        const Spacer(),
        CustomTextFormField(
            controller: nameInputController,
            label: "Tell Us Your Name",
            hintText: "Enter Your Name"),
        verticalSpaceMedium,
        verticalSpaceMedium,
        CustomButton(
          titleWidget: vm.isBusy
              ? const CircularProgressIndicator(
                  color: Colors.white,
                )
              : null,
          title: "Confirm Name",
          onPressed: () {
            vm.updateName(nameInputController.text);
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
