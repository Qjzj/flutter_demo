import 'package:dio/dio.dart';


Dio dio = new Dio();

class Ajax {

  static void get(String url, Function successFn, {Map<String, dynamic> params, Function failFn}) async {
    if(params != null) {
      StringBuffer stringData = new StringBuffer('?');
      params.forEach((key, value) {
        stringData.write(key + '=' + value + '&');
      });
      String paramsStr = stringData.toString();
      paramsStr.substring(0, paramsStr.lastIndexOf('&'));
      url += paramsStr;
    }

    try {
      Response response = await dio.get(url);
      if(successFn != null) {
        successFn(response);
      }
    } catch(exception) {
      if(failFn != null) {
        failFn(exception);
      }
    }

  }

  static void post(String url, Function successFn, {Map<String, dynamic> data, Function failFn}) async {
    try {
      Response response = await dio.post(url, data: data);
      if(successFn != null) {
        successFn(response);
      }
    } catch(exception) {
      if(failFn != null) {
        failFn(exception);
      }
    }
  }
}