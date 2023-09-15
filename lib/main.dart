import 'package:dioapihandling/View_Model/cityView_viewmodel.dart';
import 'package:dioapihandling/Views/country_screen.dart';
import 'package:dioapihandling/remote/Models/api_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => cityApiViewModel())],
   child: const MaterialApp(
     debugShowCheckedModeBanner: false,
     home: CountryScreen(),
   ),
    );

  }

}



