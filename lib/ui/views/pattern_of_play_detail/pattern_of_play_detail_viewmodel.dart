import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tactical_e_clipboard/model/position_field.dart';
import 'package:tactical_e_clipboard/ui/views/field/field_view.dart';

class PatternOfPlayDetailViewModel extends FutureViewModel {
  List<PositionField> positions = [];

  late List<Widget> widgets;

  Function onCallback = () {};

  int selected = 0; // sem callback de movimento

  void submit() {} //salvar

  void play() {} //mostrar

  @override
  Future futureToRun() async {
    widgets = [
      Expanded(
        child: FieldView(
          positions: positions,
          callback: onCallback,
        ),
      ),
      Expanded(
        child: FieldView(
          positions: positions,
          callback: onCallback,
        ),
      ),
      Expanded(
        child: FieldView(
          positions: positions,
          callback: onCallback,
        ),
      ),
      Expanded(
        child: FieldView(
          positions: positions,
          callback: onCallback,
        ),
      ),
      Expanded(
        child: FieldView(
          positions: positions,
          callback: onCallback,
        ),
      ),
      Expanded(
        child: FieldView(
          positions: positions,
          callback: onCallback,
        ),
      ),
      Expanded(
        child: FieldView(
          positions: positions,
          callback: onCallback,
        ),
      ),
      Expanded(
        child: FieldView(
          positions: positions,
          callback: onCallback,
        ),
      ),
      Expanded(
        child: FieldView(
          positions: positions,
          callback: onCallback,
        ),
      ),
      Expanded(
        child: FieldView(
          positions: positions,
          callback: onCallback,
        ),
      ),
      Expanded(
        child: FieldView(
          positions: positions,
          callback: onCallback,
        ),
      ),
      Expanded(
        child: FieldView(
          positions: positions,
          callback: onCallback,
        ),
      ),
      Expanded(
        child: FieldView(
          positions: positions,
          callback: onCallback,
        ),
      ),
      Expanded(
        child: FieldView(
          positions: positions,
          callback: onCallback,
        ),
      ),
    ];
  }

  void addFormation() {}
}
