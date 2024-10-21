import 'package:flutter/cupertino.dart';

abstract class BaseApiServices {
  Future<dynamic> getApi(String url, dynamic data, BuildContext context);
  Future<dynamic> postApi(payload, url, BuildContext context);
  Future<dynamic> updateApi(payload, url, BuildContext context);
  Future<dynamic> deleteApi(payload, BuildContext context);
}
