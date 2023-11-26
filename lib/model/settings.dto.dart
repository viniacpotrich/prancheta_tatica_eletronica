import 'package:flutter/material.dart';

class SettingsDto {
  String? selected = '';
  String? label = '';
  Function? onCallback;
  Map<String, String>? map = {};

  SettingsDto({
    required this.selected,
    required this.label,
    required this.onCallback,
    required this.map,
  });

  List<DropdownMenuItem<Object>> toDropdownMenuItem() {
    return map!.entries
        .map(
          (e) => DropdownMenuItem(value: e.key, child: Text(e.value)),
        )
        .toList();
  }
}
