// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const bool _autoTextFieldValidation = true;

const String NameTeamInputValueKey = 'nameTeamInput';
const String NicknameTeamInputValueKey = 'nicknameTeamInput';
const String CitiesTeamInputValueKey = 'citiesTeamInput';

final Map<String, TextEditingController> _TeamDetailViewTextEditingControllers =
    {};

final Map<String, FocusNode> _TeamDetailViewFocusNodes = {};

final Map<String, String? Function(String?)?> _TeamDetailViewTextValidations = {
  NameTeamInputValueKey: null,
  NicknameTeamInputValueKey: null,
  CitiesTeamInputValueKey: null,
};

mixin $TeamDetailView {
  TextEditingController get nameTeamInputController =>
      _getFormTextEditingController(NameTeamInputValueKey);
  TextEditingController get nicknameTeamInputController =>
      _getFormTextEditingController(NicknameTeamInputValueKey);
  TextEditingController get citiesTeamInputController =>
      _getFormTextEditingController(CitiesTeamInputValueKey);

  FocusNode get nameTeamInputFocusNode =>
      _getFormFocusNode(NameTeamInputValueKey);
  FocusNode get nicknameTeamInputFocusNode =>
      _getFormFocusNode(NicknameTeamInputValueKey);
  FocusNode get citiesTeamInputFocusNode =>
      _getFormFocusNode(CitiesTeamInputValueKey);

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
    nicknameTeamInputController.addListener(() => _updateFormData(model));
    citiesTeamInputController.addListener(() => _updateFormData(model));

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
    nicknameTeamInputController.addListener(() => _updateFormData(model));
    citiesTeamInputController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormStateHelper model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          NameTeamInputValueKey: nameTeamInputController.text,
          NicknameTeamInputValueKey: nicknameTeamInputController.text,
          CitiesTeamInputValueKey: citiesTeamInputController.text,
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
  String? get nicknameTeamInputValue =>
      this.formValueMap[NicknameTeamInputValueKey] as String?;
  String? get citiesTeamInputValue =>
      this.formValueMap[CitiesTeamInputValueKey] as String?;

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

  set nicknameTeamInputValue(String? value) {
    this.setData(
      this.formValueMap..addAll({NicknameTeamInputValueKey: value}),
    );

    if (_TeamDetailViewTextEditingControllers.containsKey(
        NicknameTeamInputValueKey)) {
      _TeamDetailViewTextEditingControllers[NicknameTeamInputValueKey]?.text =
          value ?? '';
    }
  }

  set citiesTeamInputValue(String? value) {
    this.setData(
      this.formValueMap..addAll({CitiesTeamInputValueKey: value}),
    );

    if (_TeamDetailViewTextEditingControllers.containsKey(
        CitiesTeamInputValueKey)) {
      _TeamDetailViewTextEditingControllers[CitiesTeamInputValueKey]?.text =
          value ?? '';
    }
  }

  bool get hasNameTeamInput =>
      this.formValueMap.containsKey(NameTeamInputValueKey) &&
      (nameTeamInputValue?.isNotEmpty ?? false);
  bool get hasNicknameTeamInput =>
      this.formValueMap.containsKey(NicknameTeamInputValueKey) &&
      (nicknameTeamInputValue?.isNotEmpty ?? false);
  bool get hasCitiesTeamInput =>
      this.formValueMap.containsKey(CitiesTeamInputValueKey) &&
      (citiesTeamInputValue?.isNotEmpty ?? false);

  bool get hasNameTeamInputValidationMessage =>
      this.fieldsValidationMessages[NameTeamInputValueKey]?.isNotEmpty ?? false;
  bool get hasNicknameTeamInputValidationMessage =>
      this.fieldsValidationMessages[NicknameTeamInputValueKey]?.isNotEmpty ??
      false;
  bool get hasCitiesTeamInputValidationMessage =>
      this.fieldsValidationMessages[CitiesTeamInputValueKey]?.isNotEmpty ??
      false;

  String? get nameTeamInputValidationMessage =>
      this.fieldsValidationMessages[NameTeamInputValueKey];
  String? get nicknameTeamInputValidationMessage =>
      this.fieldsValidationMessages[NicknameTeamInputValueKey];
  String? get citiesTeamInputValidationMessage =>
      this.fieldsValidationMessages[CitiesTeamInputValueKey];
}

extension Methods on FormStateHelper {
  setNameTeamInputValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[NameTeamInputValueKey] = validationMessage;
  setNicknameTeamInputValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[NicknameTeamInputValueKey] =
          validationMessage;
  setCitiesTeamInputValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[CitiesTeamInputValueKey] =
          validationMessage;

  /// Clears text input fields on the Form
  void clearForm() {
    nameTeamInputValue = '';
    nicknameTeamInputValue = '';
    citiesTeamInputValue = '';
  }

  /// Validates text input fields on the Form
  void validateForm() {
    this.setValidationMessages({
      NameTeamInputValueKey: getValidationMessage(NameTeamInputValueKey),
      NicknameTeamInputValueKey:
          getValidationMessage(NicknameTeamInputValueKey),
      CitiesTeamInputValueKey: getValidationMessage(CitiesTeamInputValueKey),
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
      NicknameTeamInputValueKey:
          getValidationMessage(NicknameTeamInputValueKey),
      CitiesTeamInputValueKey: getValidationMessage(CitiesTeamInputValueKey),
    });
