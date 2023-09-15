


import 'package:dioapihandling/Constants/api_contants.dart';
import 'package:dioapihandling/remote/ApiClient/apiclass.dart';
import 'package:dioapihandling/remote/Models/api_model.dart';

class ApiRepo{
  getData({
    Function()? beforeSend,
    Function(dynamic data)? onSuccess,
    Function(dynamic error)? onError,
  }){
    CityApiClient(baseurl: CityApiConstants.instance.cityApiUrl, headers: CityApiConstants.instance.cityApiHeaders, cityPath: CityApiConstants.instance.cityPath).request(
      beforeSend: () {
        beforeSend!();
      },
      onSuccess: (data) {
        onSuccess!(PakistanCityModel.fromJson(data));
      },
      onError: (error) {
        onError!(error);
      },
    );
  }
}