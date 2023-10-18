// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const bool _autoTextFieldValidation = true;

const String PasswordInputValueKey = 'passwordInput';

final Map<String, TextEditingController> _PasswordDialogTextEditingControllers =
    {};

final Map<String, FocusNode> _PasswordDialogFocusNodes = {};

final Map<String, String? Function(String?)?> _PasswordDialogTextValidations = {
  PasswordInputValueKey: null,
};

mixin $PasswordDialog {
  TextEditingController get passwordInputController =>
      _getFormTextEditingController(PasswordInputValueKey);

  FocusNode get passwordInputFocusNode =>
      _getFormFocusNode(PasswordInputValueKey);

  TextEditingController _getFormTextEditingController(
    String key, {
    String? initialValue,
  }) {
    if (_PasswordDialogTextEditingControllers.containsKey(key)) {
      return _PasswordDialogTextEditingControllers[key]!;
    }

    _PasswordDialogTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _PasswordDialogTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_PasswordDialogFocusNodes.containsKey(key)) {
      return _PasswordDialogFocusNodes[key]!;
    }
    _PasswordDialogFocusNodes[key] = FocusNode();
    return _PasswordDialogFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void syncFormWithViewModel(FormStateHelper model) {
    passwordInputController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  @Deprecated(
    'Use syncFormWithViewModel instead.'
    'This feature was deprecated after 3.1.0.',
  )
  void listenToFormUpdated(FormViewModel model) {
    passwordInputController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormStateHelper model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          PasswordInputValueKey: passwordInputController.text,
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

    for (var controller in _PasswordDialogTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _PasswordDialogFocusNodes.values) {
      focusNode.dispose();
    }

    _PasswordDialogTextEditingControllers.clear();
    _PasswordDialogFocusNodes.clear();
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

  String? get passwordInputValue =>
      this.formValueMap[PasswordInputValueKey] as String?;

  set passwordInputValue(String? value) {
    this.setData(
      this.formValueMap..addAll({PasswordInputValueKey: value}),
    );

    if (_PasswordDialogTextEditingControllers.containsKey(
        PasswordInputValueKey)) {
      _PasswordDialogTextEditingControllers[PasswordInputValueKey]?.text =
          value ?? '';
    }
  }

  bool get hasPasswordInput =>
      this.formValueMap.containsKey(PasswordInputValueKey) &&
      (passwordInputValue?.isNotEmpty ?? false);

  bool get hasPasswordInputValidationMessage =>
      this.fieldsValidationMessages[PasswordInputValueKey]?.isNotEmpty ?? false;

  String? get passwordInputValidationMessage =>
      this.fieldsValidationMessages[PasswordInputValueKey];
}

extension Methods on FormStateHelper {
  setPasswordInputValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[PasswordInputValueKey] = validationMessage;

  /// Clears text input fields on the Form
  void clearForm() {
    passwordInputValue = '';
  }

  /// Validates text input fields on the Form
  void validateForm() {
    this.setValidationMessages({
      PasswordInputValueKey: getValidationMessage(PasswordInputValueKey),
    });
  }
}

/// Returns the validation message for the given key
String? getValidationMessage(String key) {
  final validatorForKey = _PasswordDialogTextValidations[key];
  if (validatorForKey == null) return null;

  String? validationMessageForKey = validatorForKey(
    _PasswordDialogTextEditingControllers[key]!.text,
  );

  return validationMessageForKey;
}

/// Updates the fieldsValidationMessages on the FormViewModel
void updateValidationData(FormStateHelper model) =>
    model.setValidationMessages({
      PasswordInputValueKey: getValidationMessage(PasswordInputValueKey),
    });
