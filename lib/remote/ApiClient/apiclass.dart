
import 'package:dioapihandling/Utills/enums.dart';
import 'package:dio/dio.dart';

class CityApiClient{

String? baseurl;
String cityPath;
Map<String, dynamic> headers;
Map<String, dynamic>? queryParameters;
Map<String, dynamic>? body;

CityApiClient({required this.baseurl, this.queryParameters ,this.body,required this.headers,required this.cityPath});

request({
  Function()? beforeSend,
  Function(dynamic data)? onSuccess,
  Function(dynamic error)? onError,
  RequestMethod requestMethod = RequestMethod.get,
}){
  if(beforeSend != null){
    beforeSend();
  }
  final options = RequestOptions(

    baseUrl: baseurl,
    headers: headers,
    path: cityPath,
    queryParameters: queryParameters,
    data: body,

  );
 Dio().fetch(options).then((value) => {
 if(onSuccess != null && value.statusCode == 200){
     onSuccess(value.data),
}else{
  if(onError != null){
  onError('Invalid Status Code'),
  }
  }
 }).onError((error, stackTrace) => {
      if(onError != null){
        onError(error),
  }
  });
}
}

