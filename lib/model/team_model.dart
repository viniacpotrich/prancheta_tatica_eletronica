import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class TeamModel {
  String nameTeam = '';
  String nicknameTeam = '';
  String colorPrimaryTeam = '';
  String colorSecondaryTeam = '';
  String cityTeam = '';
  Image? logoTeam;
  Uuid? idTeam;

  TeamModel(
    this.nameTeam,
    this.nicknameTeam,
    this.colorPrimaryTeam,
    this.colorSecondaryTeam,
    this.cityTeam,
    this.logoTeam,
  );
}
