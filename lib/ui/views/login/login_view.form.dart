// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:oru_phones/ui/views/login/number_validate.dart';
import 'package:stacked/stacked.dart';

const bool _autoTextFieldValidation = true;

const String NumberInputValueKey = 'numberInput';
const String OtpInputValueKey = 'otpInput';
const String NameInputValueKey = 'nameInput';

final Map<String, TextEditingController> _LoginViewTextEditingControllers = {};

final Map<String, FocusNode> _LoginViewFocusNodes = {};

final Map<String, String? Function(String?)?> _LoginViewTextValidations = {
  NumberInputValueKey: NumberValidate.numberValidator,
  OtpInputValueKey: null,
  NameInputValueKey: null,
};

mixin $LoginView {
  TextEditingController get numberInputController =>
      _getFormTextEditingController(NumberInputValueKey);
  TextEditingController get otpInputController =>
      _getFormTextEditingController(OtpInputValueKey);
  TextEditingController get nameInputController =>
      _getFormTextEditingController(NameInputValueKey);

  FocusNode get numberInputFocusNode => _getFormFocusNode(NumberInputValueKey);
  FocusNode get otpInputFocusNode => _getFormFocusNode(OtpInputValueKey);
  FocusNode get nameInputFocusNode => _getFormFocusNode(NameInputValueKey);

  TextEditingController _getFormTextEditingController(
    String key, {
    String? initialValue,
  }) {
    if (_LoginViewTextEditingControllers.containsKey(key)) {
      return _LoginViewTextEditingControllers[key]!;
    }

    _LoginViewTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _LoginViewTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_LoginViewFocusNodes.containsKey(key)) {
      return _LoginViewFocusNodes[key]!;
    }
    _LoginViewFocusNodes[key] = FocusNode();
    return _LoginViewFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void syncFormWithViewModel(FormStateHelper model) {
    numberInputController.addListener(() => _updateFormData(model));
    otpInputController.addListener(() => _updateFormData(model));
    nameInputController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  @Deprecated(
    'Use syncFormWithViewModel instead.'
    'This feature was deprecated after 3.1.0.',
  )
  void listenToFormUpdated(FormViewModel model) {
    numberInputController.addListener(() => _updateFormData(model));
    otpInputController.addListener(() => _updateFormData(model));
    nameInputController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormStateHelper model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          NumberInputValueKey: numberInputController.text,
          OtpInputValueKey: otpInputController.text,
          NameInputValueKey: nameInputController.text,
        }),
    );

    if (_autoTextFieldValidation || forceValidate) {
      updateValidationData(model);
    }
  }

  bool validateFormFields(FormViewModel model) {
    _updateFormData(model, forceValidate: true);
    return model.isFormValid;
  }

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    for (var controller in _LoginViewTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _LoginViewFocusNodes.values) {
      focusNode.dispose();
    }

    _LoginViewTextEditingControllers.clear();
    _LoginViewFocusNodes.clear();
  }
}

extension ValueProperties on FormStateHelper {
  bool get hasAnyValidationMessage => this
      .fieldsValidationMessages
      .values
      .any((validation) => validation != null);

  bool get isFormValid {
    if (!_autoTextFieldValidation) this.validateForm();

    return !hasAnyValidationMessage;
  }

  String? get numberInputValue =>
      this.formValueMap[NumberInputValueKey] as String?;
  String? get otpInputValue => this.formValueMap[OtpInputValueKey] as String?;
  String? get nameInputValue => this.formValueMap[NameInputValueKey] as String?;

  set numberInputValue(String? value) {
    this.setData(
      this.formValueMap..addAll({NumberInputValueKey: value}),
    );

    if (_LoginViewTextEditingControllers.containsKey(NumberInputValueKey)) {
      _LoginViewTextEditingControllers[NumberInputValueKey]?.text = value ?? '';
    }
  }

  set otpInputValue(String? value) {
    this.setData(
      this.formValueMap..addAll({OtpInputValueKey: value}),
    );

    if (_LoginViewTextEditingControllers.containsKey(OtpInputValueKey)) {
      _LoginViewTextEditingControllers[OtpInputValueKey]?.text = value ?? '';
    }
  }

  set nameInputValue(String? value) {
    this.setData(
      this.formValueMap..addAll({NameInputValueKey: value}),
    );

    if (_LoginViewTextEditingControllers.containsKey(NameInputValueKey)) {
      _LoginViewTextEditingControllers[NameInputValueKey]?.text = value ?? '';
    }
  }

  bool get hasNumberInput =>
      this.formValueMap.containsKey(NumberInputValueKey) &&
      (numberInputValue?.isNotEmpty ?? false);
  bool get hasOtpInput =>
      this.formValueMap.containsKey(OtpInputValueKey) &&
      (otpInputValue?.isNotEmpty ?? false);
  bool get hasNameInput =>
      this.formValueMap.containsKey(NameInputValueKey) &&
      (nameInputValue?.isNotEmpty ?? false);

  bool get hasNumberInputValidationMessage =>
      this.fieldsValidationMessages[NumberInputValueKey]?.isNotEmpty ?? false;
  bool get hasOtpInputValidationMessage =>
      this.fieldsValidationMessages[OtpInputValueKey]?.isNotEmpty ?? false;
  bool get hasNameInputValidationMessage =>
      this.fieldsValidationMessages[NameInputValueKey]?.isNotEmpty ?? false;

  String? get numberInputValidationMessage =>
      this.fieldsValidationMessages[NumberInputValueKey];
  String? get otpInputValidationMessage =>
      this.fieldsValidationMessages[OtpInputValueKey];
  String? get nameInputValidationMessage =>
      this.fieldsValidationMessages[NameInputValueKey];
}

extension Methods on FormStateHelper {
  setNumberInputValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[NumberInputValueKey] = validationMessage;
  setOtpInputValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[OtpInputValueKey] = validationMessage;
  setNameInputValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[NameInputValueKey] = validationMessage;

  /// Clears text input fields on the Form
  void clearForm() {
    numberInputValue = '';
    otpInputValue = '';
    nameInputValue = '';
  }

  /// Validates text input fields on the Form
  void validateForm() {
    this.setValidationMessages({
      NumberInputValueKey: getValidationMessage(NumberInputValueKey),
      OtpInputValueKey: getValidationMessage(OtpInputValueKey),
      NameInputValueKey: getValidationMessage(NameInputValueKey),
    });
  }
}

/// Returns the validation message for the given key
String? getValidationMessage(String key) {
  final validatorForKey = _LoginViewTextValidations[key];
  if (validatorForKey == null) return null;

  String? validationMessageForKey = validatorForKey(
    _LoginViewTextEditingControllers[key]!.text,
  );

  return validationMessageForKey;
}

/// Updates the fieldsValidationMessages on the FormViewModel
void updateValidationData(FormStateHelper model) =>
    model.setValidationMessages({
      NumberInputValueKey: getValidationMessage(NumberInputValueKey),
      OtpInputValueKey: getValidationMessage(OtpInputValueKey),
      NameInputValueKey: getValidationMessage(NameInputValueKey),
    });
