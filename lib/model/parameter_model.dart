class ParameterModel {
  String key;
  String value;

  ParameterModel({
    required this.key,
    required this.value,
  });

  static fromMap(Map<String, Object?> map) {
    return ParameterModel(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }

  Map<String, Object?> toMap() {
    return {'key': key, 'value': value};
  }
}
