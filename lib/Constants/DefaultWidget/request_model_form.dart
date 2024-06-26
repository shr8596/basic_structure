class RequestModelForm {

  /// //////////////////////////////////////////////////////////////////////////
  /// jsonString key
  /// //////////////////////////////////////////////////////////////////////////
  static const String jsonString1   = "string_1";
  static const String jsonString2   = "string_2";
  static const String jsonString3   = "string_3";


  /// //////////////////////////////////////////////////////////////////////////
  /// constructor
  /// //////////////////////////////////////////////////////////////////////////
  final String property1;
  final String property2;
  final String property3;

  RequestModelForm({
    required this.property1,
    required this.property2,
    required this.property3,
  });


  /// //////////////////////////////////////////////////////////////////////////
  /// toJson
  /// //////////////////////////////////////////////////////////////////////////
  Map<String, dynamic> toJson() {
    return {
      jsonString1   : property1,
      jsonString2   : property2,
      jsonString3   : property3,
    };
  }

}
