// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const bool _autoTextFieldValidation = true;

const String NamePlayerInputValueKey = 'namePlayerInput';
const String NicknamePlayerInputValueKey = 'nicknamePlayerInput';
const String PreferredPositionsPlayerValueKey = 'preferredPositionsPlayer';
const String PreferredFootPlayerValueKey = 'preferredFootPlayer';

final Map<String, String> PreferredPositionsPlayerValueToTitleMap = {
  '1': 'titulo1',
  '2': 'titulo2',
  '3': 'titulo3',
  '4': 'titulo4',
};
final Map<String, String> PreferredFootPlayerValueToTitleMap = {
  '1': 'Right',
  '2': 'Left',
};

final Map<String, TextEditingController>
    _PlayerDetailViewTextEditingControllers = {};

final Map<String, FocusNode> _PlayerDetailViewFocusNodes = {};

final Map<String, String? Function(String?)?> _PlayerDetailViewTextValidations =
    {
  NamePlayerInputValueKey: null,
  NicknamePlayerInputValueKey: null,
};

mixin $PlayerDetailView {
  TextEditingController get namePlayerInputController =>
      _getFormTextEditingController(NamePlayerInputValueKey);
  TextEditingController get nicknamePlayerInputController =>
      _getFormTextEditingController(NicknamePlayerInputValueKey);

  FocusNode get namePlayerInputFocusNode =>
      _getFormFocusNode(NamePlayerInputValueKey);
  FocusNode get nicknamePlayerInputFocusNode =>
      _getFormFocusNode(NicknamePlayerInputValueKey);

  TextEditingController _getFormTextEditingController(
    String key, {
    String? initialValue,
  }) {
    if (_PlayerDetailViewTextEditingControllers.containsKey(key)) {
      return _PlayerDetailViewTextEditingControllers[key]!;
    }

    _PlayerDetailViewTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _PlayerDetailViewTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_PlayerDetailViewFocusNodes.containsKey(key)) {
      return _PlayerDetailViewFocusNodes[key]!;
    }
    _PlayerDetailViewFocusNodes[key] = FocusNode();
    return _PlayerDetailViewFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void syncFormWithViewModel(FormStateHelper model) {
    namePlayerInputController.addListener(() => _updateFormData(model));
    nicknamePlayerInputController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  @Deprecated(
    'Use syncFormWithViewModel instead.'
    'This feature was deprecated after 3.1.0.',
  )
  void listenToFormUpdated(FormViewModel model) {
    namePlayerInputController.addListener(() => _updateFormData(model));
    nicknamePlayerInputController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormStateHelper model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          NamePlayerInputValueKey: namePlayerInputController.text,
          NicknamePlayerInputValueKey: nicknamePlayerInputController.text,
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

    for (var controller in _PlayerDetailViewTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _PlayerDetailViewFocusNodes.values) {
      focusNode.dispose();
    }

    _PlayerDetailViewTextEditingControllers.clear();
    _PlayerDetailViewFocusNodes.clear();
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

  String? get namePlayerInputValue =>
      this.formValueMap[NamePlayerInputValueKey] as String?;
  String? get nicknamePlayerInputValue =>
      this.formValueMap[NicknamePlayerInputValueKey] as String?;
  String? get preferredPositionsPlayerValue =>
      this.formValueMap[PreferredPositionsPlayerValueKey] as String?;
  String? get preferredFootPlayerValue =>
      this.formValueMap[PreferredFootPlayerValueKey] as String?;

  set namePlayerInputValue(String? value) {
    this.setData(
      this.formValueMap..addAll({NamePlayerInputValueKey: value}),
    );

    if (_PlayerDetailViewTextEditingControllers.containsKey(
        NamePlayerInputValueKey)) {
      _PlayerDetailViewTextEditingControllers[NamePlayerInputValueKey]?.text =
          value ?? '';
    }
  }

  set nicknamePlayerInputValue(String? value) {
    this.setData(
      this.formValueMap..addAll({NicknamePlayerInputValueKey: value}),
    );

    if (_PlayerDetailViewTextEditingControllers.containsKey(
        NicknamePlayerInputValueKey)) {
      _PlayerDetailViewTextEditingControllers[NicknamePlayerInputValueKey]
          ?.text = value ?? '';
    }
  }

  bool get hasNamePlayerInput =>
      this.formValueMap.containsKey(NamePlayerInputValueKey) &&
      (namePlayerInputValue?.isNotEmpty ?? false);
  bool get hasNicknamePlayerInput =>
      this.formValueMap.containsKey(NicknamePlayerInputValueKey) &&
      (nicknamePlayerInputValue?.isNotEmpty ?? false);
  bool get hasPreferredPositionsPlayer =>
      this.formValueMap.containsKey(PreferredPositionsPlayerValueKey);
  bool get hasPreferredFootPlayer =>
      this.formValueMap.containsKey(PreferredFootPlayerValueKey);

  bool get hasNamePlayerInputValidationMessage =>
      this.fieldsValidationMessages[NamePlayerInputValueKey]?.isNotEmpty ??
      false;
  bool get hasNicknamePlayerInputValidationMessage =>
      this.fieldsValidationMessages[NicknamePlayerInputValueKey]?.isNotEmpty ??
      false;
  bool get hasPreferredPositionsPlayerValidationMessage =>
      this
          .fieldsValidationMessages[PreferredPositionsPlayerValueKey]
          ?.isNotEmpty ??
      false;
  bool get hasPreferredFootPlayerValidationMessage =>
      this.fieldsValidationMessages[PreferredFootPlayerValueKey]?.isNotEmpty ??
      false;

  String? get namePlayerInputValidationMessage =>
      this.fieldsValidationMessages[NamePlayerInputValueKey];
  String? get nicknamePlayerInputValidationMessage =>
      this.fieldsValidationMessages[NicknamePlayerInputValueKey];
  String? get preferredPositionsPlayerValidationMessage =>
      this.fieldsValidationMessages[PreferredPositionsPlayerValueKey];
  String? get preferredFootPlayerValidationMessage =>
      this.fieldsValidationMessages[PreferredFootPlayerValueKey];
}

extension Methods on FormStateHelper {
  void setPreferredPositionsPlayer(String preferredPositionsPlayer) {
    this.setData(
      this.formValueMap
        ..addAll({PreferredPositionsPlayerValueKey: preferredPositionsPlayer}),
    );

    if (_autoTextFieldValidation) {
      this.validateForm();
    }
  }

  void setPreferredFootPlayer(String preferredFootPlayer) {
    this.setData(
      this.formValueMap
        ..addAll({PreferredFootPlayerValueKey: preferredFootPlayer}),
    );

    if (_autoTextFieldValidation) {
      this.validateForm();
    }
  }

  setNamePlayerInputValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[NamePlayerInputValueKey] =
          validationMessage;
  setNicknamePlayerInputValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[NicknamePlayerInputValueKey] =
          validationMessage;
  setPreferredPositionsPlayerValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[PreferredPositionsPlayerValueKey] =
          validationMessage;
  setPreferredFootPlayerValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[PreferredFootPlayerValueKey] =
          validationMessage;

  /// Clears text input fields on the Form
  void clearForm() {
    namePlayerInputValue = '';
    nicknamePlayerInputValue = '';
  }

  /// Validates text input fields on the Form
  void validateForm() {
    this.setValidationMessages({
      NamePlayerInputValueKey: getValidationMessage(NamePlayerInputValueKey),
      NicknamePlayerInputValueKey:
          getValidationMessage(NicknamePlayerInputValueKey),
    });
  }
}

/// Returns the validation message for the given key
String? getValidationMessage(String key) {
  final validatorForKey = _PlayerDetailViewTextValidations[key];
  if (validatorForKey == null) return null;

  String? validationMessageForKey = validatorForKey(
    _PlayerDetailViewTextEditingControllers[key]!.text,
  );

  return validationMessageForKey;
}

/// Updates the fieldsValidationMessages on the FormViewModel
void updateValidationData(FormStateHelper model) =>
    model.setValidationMessages({
      NamePlayerInputValueKey: getValidationMessage(NamePlayerInputValueKey),
      NicknamePlayerInputValueKey:
          getValidationMessage(NicknamePlayerInputValueKey),
    });
