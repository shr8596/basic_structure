import 'package:social_pub/Model/ObjectModel/api_service_model.dart';


class ServiceForm {

  /// //////////////////////////////////////////////////////////////////////////
  /// GET
  /// //////////////////////////////////////////////////////////////////////////
  static Future<Map<String, dynamic>> getAPI(
      Map<String, dynamic> getData,
      Function(dynamic) errorHandler,
      ) async {
    return await ApiServiceModel().get(
      url: "getAPI",
      sendData: getData,
      errorHandler: errorHandler,
    );
  }


  /// //////////////////////////////////////////////////////////////////////////
  /// POST
  /// //////////////////////////////////////////////////////////////////////////
  static Future<Map<String, dynamic>> postAPI(
      Map<String, dynamic> getData,
      Function(dynamic) errorHandler,
      ) async {
    return await ApiServiceModel().post(
      url: "postAPI",
      sendData: getData,
      errorHandler: errorHandler,
    );
  }


  /// //////////////////////////////////////////////////////////////////////////
  /// PUT
  /// //////////////////////////////////////////////////////////////////////////
  static Future<Map<String, dynamic>> putAPI(
      Map<String, dynamic> getData,
      Function(dynamic) errorHandler,
      ) async {
    return await ApiServiceModel().put(
      url: "putAPI",
      sendData: getData,
      errorHandler: errorHandler,
    );
  }

}