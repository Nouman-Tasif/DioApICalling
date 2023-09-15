import 'package:dioapihandling/remote/ApiRepo/api_resportory.dart';
import 'package:dioapihandling/remote/Models/api_model.dart';
import 'package:flutter/material.dart';


class cityApiViewModel with ChangeNotifier{
  PakistanCityModel? pakistanCityModel;

  callTheApi(){
    ApiRepo().getData(
      beforeSend: () {
        const CircularProgressIndicator();
        notifyListeners();
      },
      onSuccess: (data) {
       pakistanCityModel = data;
        notifyListeners();
      },
      onError: (error) {
        debugPrint('There is some error in the api calling');
      },
    );
  }
}