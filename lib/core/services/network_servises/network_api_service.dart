import 'package:bloc_arct/core/constants/app_urls.dart';
import 'package:bloc_arct/core/services/network_servises/base_api_services.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/widgets/framework.dart';

class NetworkApiService extends BaseApiServices {
  static Future<BaseOptions> getBaseOptions(
      {Map<String, dynamic>? query}) async {
    BaseOptions baseOptions = BaseOptions(
      followRedirects: false,
      validateStatus: (status) {
        return status != 401 && status! < 550;
      },
      queryParameters: query,
      baseUrl: AppUrls.baseUrl,
      headers: {
        "Accept": "application/json",
        'Content-type': 'application/json',
        'X-Requested-With': 'XMLHttpRequest',
        // 'Authorization': accc,
      },
    );
    return baseOptions;
  }

  @override
  Future<dynamic> deleteApi(payload, BuildContext context) {
    // TODO: implement deleteApi
    throw UnimplementedError();
  }

  @override
  Future<dynamic> getApi(String url, data, BuildContext context) async {
    if (kDebugMode) {
      print(url);
    }

    Dio dio = Dio(await getBaseOptions(query: data));
    dynamic responseJson;

    try {
      final response = await dio.get(url, data: data);
      if (kDebugMode) {
        print(response.statusCode);
        print(response.data);
      }
    } catch (e) {}
    throw UnimplementedError();
  }

  @override
  Future<dynamic> postApi(payload, url, BuildContext context) {
    // TODO: implement postApi
    throw UnimplementedError();
  }

  @override
  Future<dynamic> updateApi(payload, url, BuildContext context) {
    // TODO: implement updateApi
    throw UnimplementedError();
  }
}
