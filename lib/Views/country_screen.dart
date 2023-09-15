import 'package:dioapihandling/View_Model/cityView_viewmodel.dart';
import 'package:dioapihandling/Views/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CountryScreen extends StatefulWidget {
  const CountryScreen({Key? key}) : super(key: key);

  @override
  State<CountryScreen> createState() => _CountryScreenState();
}

class _CountryScreenState extends State<CountryScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<cityApiViewModel>(context, listen: false).callTheApi();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<cityApiViewModel>(builder: (context, viewmodel, _) {
      final height = MediaQuery.of(context).size.height * 1;
      final width = MediaQuery.of(context).size.height * 1;
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            "Pakistan City",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: viewmodel.pakistanCityModel!.results!.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.all(20),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => CityDetailsScreen(data: index)));
                  },
                  child: Container(
                    height: height * .1,
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
                              const Text(
                                "Country Name:",
                                style: TextStyle(color: Colors.black, fontSize: 15),
                              ),
                              Text(
                                viewmodel
                                    .pakistanCityModel!.results![index].country!,
                                style: const TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Text(
                                "City Name:",
                                style: TextStyle(color: Colors.black, fontSize: 15),
                              ),
                              Text(
                                viewmodel
                                    .pakistanCityModel!.results![index].name!,
                                style: const TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),
      );
    });
  }
}
