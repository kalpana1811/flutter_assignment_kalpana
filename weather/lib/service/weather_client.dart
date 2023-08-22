import 'package:dio/dio.dart';

class WeatherClient{
  Dio dio = Dio();
  getWeatherDataFromAPI() async{
    String WeatherURL= "https://api.openweathermap.org/data/2.5/weather?lat=28.42&lon=77.12&appid=dae29d1b32768a0c91c3e9ada1444867";
    try{
      var response = await dio.get(WeatherURL);
      print(" response: ${response.data}");
      return response.data;
    }catch(error){
      print("error in fetching data");
    }
  }
}