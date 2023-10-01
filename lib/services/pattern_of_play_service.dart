import 'package:tactical_e_clipboard/model/pattern_of_play_model.dart';
import 'package:tactical_e_clipboard/services/abstract_service.dart';
import 'package:tactical_e_clipboard/services/pattern_of_play_repository_service.dart';
import 'package:uuid/uuid.dart';

class PatternOfPlayService extends AbstractService<PatternOfPlayModel, Uuid,
    PatternOfPlayRepositoryService> {}
