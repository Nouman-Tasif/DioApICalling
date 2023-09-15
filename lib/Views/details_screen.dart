import 'package:dioapihandling/remote/Models/api_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../View_Model/cityView_viewmodel.dart';
import '../Widgets/TextWidget.dart';

class CityDetailsScreen extends StatefulWidget {
  final int data;

  const CityDetailsScreen({Key? key, required this.data}) : super(key: key);

  @override
  State<CityDetailsScreen> createState() => _CityDetailsScreenState();
}

class _CityDetailsScreenState extends State<CityDetailsScreen> {
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<cityApiViewModel>(context, listen: false).callTheApi();
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.height * 1;
    return Consumer<cityApiViewModel>(builder: (context, viewmodel, _) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Details Screen",
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body:  Container(
          height: height * .7,
          width: width * .9,
          decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ]),
          child: Padding(
            padding: EdgeInsets.only(top: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextWidget(title: "Object Id"),
                    TextWidget(title: viewmodel.pakistanCityModel!.results![widget.data].objectId.toString())
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextWidget(title: "City Id"),
                    TextWidget(title: viewmodel.pakistanCityModel!.results![widget.data].cityId.toString())
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextWidget(title: "City name"),
                    TextWidget(title: viewmodel.pakistanCityModel!.results![widget.data].name.toString()),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextWidget(title: "Country"),
                    TextWidget(title: viewmodel.pakistanCityModel!.results![widget.data].country.toString())
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextWidget(title: "Country code"),
                    TextWidget(title: viewmodel.pakistanCityModel!.results![widget.data].countryCode.toString())
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextWidget(title: "Feature code"),
                    TextWidget(title: viewmodel.pakistanCityModel!.results![widget.data].featureCode.toString())
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextWidget(title: "admin Code"),
                    TextWidget(title: viewmodel.pakistanCityModel!.results![widget.data].adminCode.toString())
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextWidget(title: "Population"),
                    TextWidget(title: viewmodel.pakistanCityModel!.results![widget.data].population.toString())
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextWidget(title: "Create At"),
                    TextWidget(title: viewmodel.pakistanCityModel!.results![widget.data].createdAt.toString())
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextWidget(title: "Update At "),
                    TextWidget(title: viewmodel.pakistanCityModel!.results![widget.data].updatedAt.toString())
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextWidget(title: "Location SType "),
                    TextWidget(title: viewmodel.pakistanCityModel!.results![widget.data].location!.sType.toString())
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextWidget(title: "Longitude"),
                    TextWidget(title: viewmodel.pakistanCityModel!.results![widget.data].location!.longitude.toString())
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextWidget(title: "Latitude "),
                    TextWidget(title: viewmodel.pakistanCityModel!.results![widget.data].location!.latitude.toString())
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
