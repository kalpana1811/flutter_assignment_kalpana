import 'package:flutter/material.dart';
import 'package:weather_app/service/weather_model.dart';
import 'package:weather_app/service/weather_client.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
WeatherClient wClient = WeatherClient();
Future<List<WeatherModel>> getWeather() async {
  Map<String, dynamic> weatherMap = await wClient.getWeatherDataFromAPI();
  List<WeatherModel> weatherList = [WeatherModel.extractWeatherModelFromJSON(weatherMap)];
  return weatherList;
}

List<WeatherModel> genericToSpecificObject(List<dynamic> list) {
  List<WeatherModel> weatherList = list.map((dynamic item) {
    return WeatherModel.extractWeatherModelFromJSON(item);
  }).toList();
  return weatherList;
}


class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: 
    Scaffold(appBar: AppBar(
      title: Text("Weather App"),
      centerTitle: true,
    ),
    body: Container(
      color: Colors.lightBlueAccent,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: FutureBuilder(
        future: getWeather(),
        builder: (context, snapshot){
          if (snapshot.connectionState == ConnectionState.waiting){
            return const Center(child: CircularProgressIndicator(),);
          }
          else if (snapshot.hasError){
            return Center(child: Text(snapshot.error.toString()),);
          }
          else if (snapshot.hasData){
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index){
                return ListTile(
                  tileColor: Colors.pink,
                  title: Column(
                    children: [
                      Text("Temperature: ${snapshot.data![index].maintemp.temp.toString()}"),
                      Text("Max Temperature: ${snapshot.data![index].maintemp.temp_max.toString()}"),
                      Text("Min Temperature: ${snapshot.data![index].maintemp.temp_min.toString()}"),
                      Text("Pressure: ${snapshot.data![index].maintemp.pressure.toString()}"),
                      Text("Humidity: ${snapshot.data![index].maintemp.humidity.toString()}"),
                      //Text("Weather: ${snapshot.data![index].weather[1].toString()}"),

                    ],
                  ),
                );
              });
          }
          return Container();
        }),

    ),
    ));
}
}