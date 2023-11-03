import 'dart:io';
import 'dart:convert';
import 'dart:typed_data';
import 'dart:ui';

class TeamModel {
  String? idTeam;
  String? nameTeam;
  String? nicknameTeam;
  String? colorPrimaryTeam;
  String? colorSecondaryTeam;
  String? cityTeam;
  Image? logoTeam;

  TeamModel({
    this.idTeam = '',
    this.nameTeam = '',
    this.nicknameTeam = '',
    this.colorPrimaryTeam = '',
    this.colorSecondaryTeam = '',
    this.cityTeam,
    this.logoTeam,
  });

  static fromMap(Map<String, Object?> map) async {
    var image = map['logoTeam'] != null
        ? await base64ToImage(map['logoTeam'] as String)
        : null;

    var team = TeamModel(
        nameTeam: map['nameTeam'] as String,
        nicknameTeam: map['nicknameTeam'] as String,
        colorPrimaryTeam: map['colorPrimaryTeam'] as String,
        colorSecondaryTeam: map['colorSecondaryTeam'] as String,
        cityTeam: map['cityTeam'] as String,
        logoTeam: image);
    if (map['idTeam'] != null) {
      team.idTeam = map['idTeam'] as String;
    }
    return team;
  }

  Future<Map<String, Object?>> toMap() async {
    String? blob = '';
    if (logoTeam != null) {
      blob = await imageToBase64(logoTeam!);
    }

    return {
      'idTeam': idTeam,
      'nameTeam': nameTeam,
      'nicknameTeam': nicknameTeam,
      'colorPrimaryTeam': colorPrimaryTeam,
      'colorSecondaryTeam': colorSecondaryTeam,
      'cityTeam': cityTeam,
      'logoTeam': blob,
    };
  }

  static Future<String> fileToBase64(File imageFile) async {
    List<int> imageBytes = imageFile.readAsBytesSync();
    String base64Image = base64Encode(imageBytes);
    return base64Image;
  }

  static Future<String?> imageToBase64(Image image) async {
    var byteData = await image.toByteData(format: ImageByteFormat.png);
    Uint8List? pngBytes = byteData?.buffer.asUint8List();
    String? base64Image = pngBytes != null ? base64Encode(pngBytes) : null;
    return base64Image;
  }

  static Future<Image> base64ToImage(String base64String) async {
    Uint8List bytes = base64Decode(base64String);
    var codec = await instantiateImageCodec(bytes);
    FrameInfo frameInfo = await codec.getNextFrame();
    return frameInfo.image;
  }
}
