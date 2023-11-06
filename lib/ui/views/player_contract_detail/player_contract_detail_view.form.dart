// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const bool _autoTextFieldValidation = true;

const String NamePlayerInputValueKey = 'namePlayerInput';
const String PlayerValueKey = 'player';
const String TeamValueKey = 'team';

final Map<String, String> PlayerValueToTitleMap = {
  '1': 'title',
};
final Map<String, String> TeamValueToTitleMap = {
  '1': 'title',
};

final Map<String, TextEditingController>
    _PlayerContractDetailViewTextEditingControllers = {};

final Map<String, FocusNode> _PlayerContractDetailViewFocusNodes = {};

final Map<String, String? Function(String?)?>
    _PlayerContractDetailViewTextValidations = {
  NamePlayerInputValueKey: null,
};

mixin $PlayerContractDetailView {
  TextEditingController get namePlayerInputController =>
      _getFormTextEditingController(NamePlayerInputValueKey);

  FocusNode get namePlayerInputFocusNode =>
      _getFormFocusNode(NamePlayerInputValueKey);

  TextEditingController _getFormTextEditingController(
    String key, {
    String? initialValue,
  }) {
    if (_PlayerContractDetailViewTextEditingControllers.containsKey(key)) {
      return _PlayerContractDetailViewTextEditingControllers[key]!;
    }

    _PlayerContractDetailViewTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _PlayerContractDetailViewTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_PlayerContractDetailViewFocusNodes.containsKey(key)) {
      return _PlayerContractDetailViewFocusNodes[key]!;
    }
    _PlayerContractDetailViewFocusNodes[key] = FocusNode();
    return _PlayerContractDetailViewFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void syncFormWithViewModel(FormStateHelper model) {
    namePlayerInputController.addListener(() => _updateFormData(model));

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

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormStateHelper model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          NamePlayerInputValueKey: namePlayerInputController.text,
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
        in _PlayerContractDetailViewTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _PlayerContractDetailViewFocusNodes.values) {
      focusNode.dispose();
    }

    _PlayerContractDetailViewTextEditingControllers.clear();
    _PlayerContractDetailViewFocusNodes.clear();
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
  String? get playerValue => this.formValueMap[PlayerValueKey] as String?;
  String? get teamValue => this.formValueMap[TeamValueKey] as String?;

  set namePlayerInputValue(String? value) {
    this.setData(
      this.formValueMap..addAll({NamePlayerInputValueKey: value}),
    );

    if (_PlayerContractDetailViewTextEditingControllers.containsKey(
        NamePlayerInputValueKey)) {
      _PlayerContractDetailViewTextEditingControllers[NamePlayerInputValueKey]
          ?.text = value ?? '';
    }
  }

  bool get hasNamePlayerInput =>
      this.formValueMap.containsKey(NamePlayerInputValueKey) &&
      (namePlayerInputValue?.isNotEmpty ?? false);
  bool get hasPlayer => this.formValueMap.containsKey(PlayerValueKey);
  bool get hasTeam => this.formValueMap.containsKey(TeamValueKey);

  bool get hasNamePlayerInputValidationMessage =>
      this.fieldsValidationMessages[NamePlayerInputValueKey]?.isNotEmpty ??
      false;
  bool get hasPlayerValidationMessage =>
      this.fieldsValidationMessages[PlayerValueKey]?.isNotEmpty ?? false;
  bool get hasTeamValidationMessage =>
      this.fieldsValidationMessages[TeamValueKey]?.isNotEmpty ?? false;

  String? get namePlayerInputValidationMessage =>
      this.fieldsValidationMessages[NamePlayerInputValueKey];
  String? get playerValidationMessage =>
      this.fieldsValidationMessages[PlayerValueKey];
  String? get teamValidationMessage =>
      this.fieldsValidationMessages[TeamValueKey];
}

extension Methods on FormStateHelper {
  void setPlayer(String player) {
    this.setData(
      this.formValueMap..addAll({PlayerValueKey: player}),
    );

    if (_autoTextFieldValidation) {
      this.validateForm();
    }
  }

  void setTeam(String team) {
    this.setData(
      this.formValueMap..addAll({TeamValueKey: team}),
    );

    if (_autoTextFieldValidation) {
      this.validateForm();
    }
  }

  setNamePlayerInputValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[NamePlayerInputValueKey] =
          validationMessage;
  setPlayerValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[PlayerValueKey] = validationMessage;
  setTeamValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[TeamValueKey] = validationMessage;

  /// Clears text input fields on the Form
  void clearForm() {
    namePlayerInputValue = '';
  }

  /// Validates text input fields on the Form
  void validateForm() {
    this.setValidationMessages({
      NamePlayerInputValueKey: getValidationMessage(NamePlayerInputValueKey),
    });
  }
}

/// Returns the validation message for the given key
String? getValidationMessage(String key) {
  final validatorForKey = _PlayerContractDetailViewTextValidations[key];
  if (validatorForKey == null) return null;

  String? validationMessageForKey = validatorForKey(
    _PlayerContractDetailViewTextEditingControllers[key]!.text,
  );

  return validationMessageForKey;
}

/// Updates the fieldsValidationMessages on the FormViewModel
void updateValidationData(FormStateHelper model) =>
    model.setValidationMessages({
      NamePlayerInputValueKey: getValidationMessage(NamePlayerInputValueKey),
    });
