// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const bool _autoTextFieldValidation = true;

const String NameTeamInputValueKey = 'nameTeamInput';

final Map<String, TextEditingController> _TeamDetailViewTextEditingControllers =
    {};

final Map<String, FocusNode> _TeamDetailViewFocusNodes = {};

final Map<String, String? Function(String?)?> _TeamDetailViewTextValidations = {
  NameTeamInputValueKey: null,
};

mixin $TeamDetailView {
  TextEditingController get nameTeamInputController =>
      _getFormTextEditingController(NameTeamInputValueKey);

  FocusNode get nameTeamInputFocusNode =>
      _getFormFocusNode(NameTeamInputValueKey);

  TextEditingController _getFormTextEditingController(
    String key, {
    String? initialValue,
  }) {
    if (_TeamDetailViewTextEditingControllers.containsKey(key)) {
      return _TeamDetailViewTextEditingControllers[key]!;
    }

    _TeamDetailViewTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _TeamDetailViewTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_TeamDetailViewFocusNodes.containsKey(key)) {
      return _TeamDetailViewFocusNodes[key]!;
    }
    _TeamDetailViewFocusNodes[key] = FocusNode();
    return _TeamDetailViewFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void syncFormWithViewModel(FormStateHelper model) {
    nameTeamInputController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  @Deprecated(
    'Use syncFormWithViewModel instead.'
    'This feature was deprecated after 3.1.0.',
  )
  void listenToFormUpdated(FormViewModel model) {
    nameTeamInputController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormStateHelper model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          NameTeamInputValueKey: nameTeamInputController.text,
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

    for (var controller in _TeamDetailViewTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _TeamDetailViewFocusNodes.values) {
      focusNode.dispose();
    }

    _TeamDetailViewTextEditingControllers.clear();
    _TeamDetailViewFocusNodes.clear();
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

  String? get nameTeamInputValue =>
      this.formValueMap[NameTeamInputValueKey] as String?;

  set nameTeamInputValue(String? value) {
    this.setData(
      this.formValueMap..addAll({NameTeamInputValueKey: value}),
    );

    if (_TeamDetailViewTextEditingControllers.containsKey(
        NameTeamInputValueKey)) {
      _TeamDetailViewTextEditingControllers[NameTeamInputValueKey]?.text =
          value ?? '';
    }
  }

  bool get hasNameTeamInput =>
      this.formValueMap.containsKey(NameTeamInputValueKey) &&
      (nameTeamInputValue?.isNotEmpty ?? false);

  bool get hasNameTeamInputValidationMessage =>
      this.fieldsValidationMessages[NameTeamInputValueKey]?.isNotEmpty ?? false;

  String? get nameTeamInputValidationMessage =>
      this.fieldsValidationMessages[NameTeamInputValueKey];
}

extension Methods on FormStateHelper {
  setNameTeamInputValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[NameTeamInputValueKey] = validationMessage;

  /// Clears text input fields on the Form
  void clearForm() {
    nameTeamInputValue = '';
  }

  /// Validates text input fields on the Form
  void validateForm() {
    this.setValidationMessages({
      NameTeamInputValueKey: getValidationMessage(NameTeamInputValueKey),
    });
  }
}

/// Returns the validation message for the given key
String? getValidationMessage(String key) {
  final validatorForKey = _TeamDetailViewTextValidations[key];
  if (validatorForKey == null) return null;

  String? validationMessageForKey = validatorForKey(
    _TeamDetailViewTextEditingControllers[key]!.text,
  );

  return validationMessageForKey;
}

/// Updates the fieldsValidationMessages on the FormViewModel
void updateValidationData(FormStateHelper model) =>
    model.setValidationMessages({
      NameTeamInputValueKey: getValidationMessage(NameTeamInputValueKey),
    });
