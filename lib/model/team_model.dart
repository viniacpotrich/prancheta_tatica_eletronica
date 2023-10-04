import 'dart:io';
import 'dart:convert';
import 'dart:typed_data';

class TeamModel {
  String? nameTeam;
  String? nicknameTeam;
  String? colorPrimaryTeam;
  String? colorSecondaryTeam;
  String? cityTeam;
  File? logoTeam;
  String? idTeam;

  TeamModel({
    this.nameTeam = '',
    this.nicknameTeam = '',
    this.colorPrimaryTeam = '',
    this.colorSecondaryTeam = '',
    this.cityTeam,
    this.logoTeam,
  });

  static fromMap(Map<String, Object?> map) async {
    var file = map['logoTeam'] != null
        ? await base64ToFile(map['logoTeam'] as String, map['idTeam'] as String)
        : null;

    var team = TeamModel(
        nameTeam: map['nameTeam'] as String,
        nicknameTeam: map['nicknameTeam'] as String,
        colorPrimaryTeam: map['colorPrimaryTeam'] as String,
        colorSecondaryTeam: map['colorSecondaryTeam'] as String,
        cityTeam: map['cityTeam'] as String,
        logoTeam: file);
    if (map['idTeam'] != null) {
      team.idTeam = map['idTeam'] as String;
    }
    return team;
  }

  Future<Map<String, Object?>> toMap() async {
    var blob = await imageToBase64(logoTeam!);

    return {
      'nameTeam': nameTeam,
      'nicknameTeam': nicknameTeam,
      'colorPrimaryTeam': colorPrimaryTeam,
      'colorSecondaryTeam': colorSecondaryTeam,
      'cityTeam': cityTeam,
      'idTeam': idTeam, // You might need to convert this to a suitable format
      'logoTeam': blob, // You might need to convert this to a suitable format
    };
  }

  Future<String> imageToBase64(File imageFile) async {
    List<int> imageBytes = await imageFile.readAsBytesSync();
    String base64Image = base64Encode(imageBytes);
    return base64Image;
  }

  // static File base64ToImage(String base64String) {
  //   Uint8List bytes = base64Decode(base64String);
  //   File file = File.fromRawPath(bytes);
  //   return file;
  // }

  static Future<File> base64ToFile(String base64String, String filePath) async {
    Uint8List bytes = base64Decode(base64String);
    File imgFile = File(filePath);
    await imgFile.writeAsBytes(bytes);
    return imgFile;
  }
}
