class PakistanCityModel {
  List<Results>? results;

  PakistanCityModel({this.results});

  PakistanCityModel.fromJson(Map<String, dynamic> json) {
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results!.add(new Results.fromJson(v));
      });
    }

    results = (json['results'] != null ?  (json['results'] as List).map((e) => Results.fromJson(e)).toList() : List.empty());
  }


}

class Results {
  String? objectId;
  Location? location;
  int? cityId;
  String? name;
  String? country;
  String? countryCode;
  String? featureCode;
  String? adminCode;
  int? population;
  String? createdAt;
  String? updatedAt;

  Results(
      {this.objectId,
        this.location,
        this.cityId,
        this.name,
        this.country,
        this.countryCode,
        this.featureCode,
        this.adminCode,
        this.population,
        this.createdAt,
        this.updatedAt});

  Results.fromJson(Map<String, dynamic> json) {
    objectId = json['objectId'];
    location = json['location'] != null
        ? new Location.fromJson(json['location'])
        : null;
    cityId = json['cityId'];
    name = json['name'];
    country = json['country'];
    countryCode = json['countryCode'];
    featureCode = json['featureCode'];
    adminCode = json['adminCode'];
    population = json['population'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }


}

class Location {
  String? sType;
  double? latitude;
  double? longitude;

  Location({this.sType, this.latitude, this.longitude});

  Location.fromJson(Map<String, dynamic> json) {
    sType = json['__type'];
    latitude = json['latitude'];
    longitude = json['longitude'];
  }


}
