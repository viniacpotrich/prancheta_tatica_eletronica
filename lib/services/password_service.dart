import 'package:crypt/crypt.dart';
import 'package:tactical_e_clipboard/model/parameter_model.dart';
import 'package:tactical_e_clipboard/services/parameter_service.dart';

import '../app/app.locator.dart';

class PasswordService {
  var _parameterService = locator<ParameterService>();

  Future<bool> hasPassword() async {
    bool result = false;

    await _parameterService.get("password").then((value) {
      if (value != null) {
        if (value.key == "password" && value.value == '') {
          result = false;
        } else {
          result = true;
        }
      } else {
        result = false;
      }
    });
    return result;
  }

  Future<void> updatePassword(String str) async {
    await _parameterService.update(ParameterModel(
      key: "password",
      value: Crypt.sha256(str).toString(),
    ));
  }

  Future<bool> isValid(String enteredPassword) async {
    String str = '';
    await _parameterService.get("password").then((value) => str = value!.value);

    if (str.isEmpty) {
      return false;
    }

    return Crypt(str).match(enteredPassword);
  }
}
