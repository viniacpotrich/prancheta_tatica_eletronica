import 'package:stacked/stacked.dart';
import 'package:uuid/uuid.dart';

class PlayerDetailViewModel extends BaseViewModel {
  void getPlayer(Uuid uuid) {
    print(uuid);
    //TODO pesquisar o player pelo uuid no banco
  }
}
