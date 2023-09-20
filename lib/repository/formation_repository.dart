import 'package:tactical_e_clipboard/model/formation_model.dart';
import 'package:tactical_e_clipboard/repository/repository.dart';
import 'package:uuid/uuid.dart';

interface class FormationRepository
    extends RepositoryInterface<Uuid, FormationModel> {
  @override
  bool delete(FormationModel k) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  FormationModel get(Uuid t) {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  List<FormationModel> getAll() {
    // TODO: implement getAll
    throw UnimplementedError();
  }

  @override
  FormationModel patch(FormationModel k) {
    // TODO: implement patch
    throw UnimplementedError();
  }

  @override
  FormationModel put(FormationModel k) {
    // TODO: implement put
    throw UnimplementedError();
  }
}
