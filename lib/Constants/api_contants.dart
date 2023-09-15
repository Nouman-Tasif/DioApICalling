

class CityApiConstants{
CityApiConstants._();

static CityApiConstants? cityApiInstance;

static CityApiConstants get instance{
if(cityApiInstance != null){
  return cityApiInstance!;

}
cityApiInstance = CityApiConstants._();
return cityApiInstance!;

}
final cityApiUrl = "https://parseapi.back4app.com/";
final cityApiHeaders = {
  "X-Parse-Application-Id": "q1QfxhDv1KLM5OPzUFzZRIvYERUAFLWEWX9r053J",
  "X-Parse-Master-Key": "POcTYBgrQ52WGn2lJrcQrYwFFM44uhQ2eqmoy8hS"
};
final cityPath = "classes/City";
}