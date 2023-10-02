import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class TeamModel {
  String nameTeam = '';
  String nicknameTeam = '';
  String colorPrimaryTeam = '';
  String colorSecondaryTeam = '';
  String cityTeam = '';
  Image? logoTeam;
  String? idTeam;

  TeamModel(
    this.nameTeam,
    this.nicknameTeam,
    this.colorPrimaryTeam,
    this.colorSecondaryTeam,
    this.cityTeam,
    this.logoTeam,
  );

  static fromMap(Map<String, Object?> map) {
    var team = TeamModel(
        map['nameTeam'] as String,
        map['nicknameTeam'] as String,
        map['colorPrimaryTeam'] as String,
        map['colorSecondaryTeam'] as String,
        map['cityTeam'] as String,
        null // Missing Image
        );
    if (map['idTeam'] != null) {
      team.idTeam = map['idTeam'] as String;
    }
    return team;
  }

  Map<String, Object?> toMap() {
    return {
      'nameTeam': nameTeam,
      'nicknameTeam': nicknameTeam,
      'colorPrimaryTeam': colorPrimaryTeam,
      'colorSecondaryTeam': colorSecondaryTeam,
      'cityTeam': cityTeam,
      'idTeam': idTeam, // You might need to convert this to a suitable format
      // 'logoTeam': logoTeam, // You might need to convert this to a suitable format
    };
  }
}
