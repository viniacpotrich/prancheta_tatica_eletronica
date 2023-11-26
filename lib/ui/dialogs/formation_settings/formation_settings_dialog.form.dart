// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const bool _autoTextFieldValidation = true;

const String LixoValueKey = 'lixo';
const String TeamValueKey = 'team';

final Map<String, String> TeamValueToTitleMap = {
  '1': 'title',
};

final Map<String, TextEditingController>
    _FormationSettingsDialogTextEditingControllers = {};

final Map<String, FocusNode> _FormationSettingsDialogFocusNodes = {};

final Map<String, String? Function(String?)?>
    _FormationSettingsDialogTextValidations = {
  LixoValueKey: null,
};

mixin $FormationSettingsDialog {
  TextEditingController get lixoController =>
      _getFormTextEditingController(LixoValueKey);

  FocusNode get lixoFocusNode => _getFormFocusNode(LixoValueKey);

  TextEditingController _getFormTextEditingController(
    String key, {
    String? initialValue,
  }) {
    if (_FormationSettingsDialogTextEditingControllers.containsKey(key)) {
      return _FormationSettingsDialogTextEditingControllers[key]!;
    }

    _FormationSettingsDialogTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _FormationSettingsDialogTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_FormationSettingsDialogFocusNodes.containsKey(key)) {
      return _FormationSettingsDialogFocusNodes[key]!;
    }
    _FormationSettingsDialogFocusNodes[key] = FocusNode();
    return _FormationSettingsDialogFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void syncFormWithViewModel(FormStateHelper model) {
    lixoController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  @Deprecated(
    'Use syncFormWithViewModel instead.'
    'This feature was deprecated after 3.1.0.',
  )
  void listenToFormUpdated(FormViewModel model) {
    lixoController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormStateHelper model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          LixoValueKey: lixoController.text,
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

    for (var controller
        in _FormationSettingsDialogTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _FormationSettingsDialogFocusNodes.values) {
      focusNode.dispose();
    }

    _FormationSettingsDialogTextEditingControllers.clear();
    _FormationSettingsDialogFocusNodes.clear();
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

  String? get lixoValue => this.formValueMap[LixoValueKey] as String?;
  String? get teamValue => this.formValueMap[TeamValueKey] as String?;

  set lixoValue(String? value) {
    this.setData(
      this.formValueMap..addAll({LixoValueKey: value}),
    );

    if (_FormationSettingsDialogTextEditingControllers.containsKey(
        LixoValueKey)) {
      _FormationSettingsDialogTextEditingControllers[LixoValueKey]?.text =
          value ?? '';
    }
  }

  bool get hasLixo =>
      this.formValueMap.containsKey(LixoValueKey) &&
      (lixoValue?.isNotEmpty ?? false);
  bool get hasTeam => this.formValueMap.containsKey(TeamValueKey);

  bool get hasLixoValidationMessage =>
      this.fieldsValidationMessages[LixoValueKey]?.isNotEmpty ?? false;
  bool get hasTeamValidationMessage =>
      this.fieldsValidationMessages[TeamValueKey]?.isNotEmpty ?? false;

  String? get lixoValidationMessage =>
      this.fieldsValidationMessages[LixoValueKey];
  String? get teamValidationMessage =>
      this.fieldsValidationMessages[TeamValueKey];
}

extension Methods on FormStateHelper {
  void setTeam(String team) {
    this.setData(
      this.formValueMap..addAll({TeamValueKey: team}),
    );

    if (_autoTextFieldValidation) {
      this.validateForm();
    }
  }

  setLixoValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[LixoValueKey] = validationMessage;
  setTeamValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[TeamValueKey] = validationMessage;

  /// Clears text input fields on the Form
  void clearForm() {
    lixoValue = '';
  }

  /// Validates text input fields on the Form
  void validateForm() {
    this.setValidationMessages({
      LixoValueKey: getValidationMessage(LixoValueKey),
    });
  }
}

/// Returns the validation message for the given key
String? getValidationMessage(String key) {
  final validatorForKey = _FormationSettingsDialogTextValidations[key];
  if (validatorForKey == null) return null;

  String? validationMessageForKey = validatorForKey(
    _FormationSettingsDialogTextEditingControllers[key]!.text,
  );

  return validationMessageForKey;
}

/// Updates the fieldsValidationMessages on the FormViewModel
void updateValidationData(FormStateHelper model) =>
    model.setValidationMessages({
      LixoValueKey: getValidationMessage(LixoValueKey),
    });
