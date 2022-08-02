import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:yandex_weather/yandex_weather.dart';

//raw json string for mocking purposes
const jsonMock =
    '{"now":1470220206,"now_dt":"2016-08-03T10:30:06.238Z","info":{"lat":55.833333,"lon":37.616667,"url":"https://yandex.ru/pogoda/moscow"},"fact":{"temp":20,"feels_like":21,"icon":"ovc","condition":"overcast","wind_speed":2,"wind_gust":5.9,"wind_dir":"n","pressure_mm":745,"pressure_pa":994,"humidity":83,"daytime":"d","polar":false,"season":"summer","obs_time":1470214800},"forecast":{"date":"2016-08-03","date_ts":1522702800,"week":15,"sunrise":"04:38","sunset":"20:31","moon_code":1,"moon_text":"moon-code-1","parts":[{"part_name":"day","temp_min":20,"temp_max":21,"temp_avg":21,"feels_like":23,"icon":"bkn_n","condition":"cloudy","daytime":"n","polar":false,"wind_speed":0.9,"wind_gust":4,"wind_dir":"nw","pressure_mm":746,"pressure_pa":995,"humidity":81,"prec_mm":0,"prec_period":360,"prec_prob":0},{"part_name":"evening","temp_min":20,"temp_max":21,"temp_avg":21,"feels_like":23,"icon":"bkn_n","condition":"cloudy","daytime":"n","polar":false,"wind_speed":0.9,"wind_gust":4,"wind_dir":"nw","pressure_mm":746,"pressure_pa":995,"humidity":81,"prec_mm":0,"prec_period":360,"prec_prob":0}]}}';

void main() async {
  runApp(
    const YandexWeatherExampleApp(),
  );
}

class YandexWeatherExampleApp extends StatelessWidget {
  const YandexWeatherExampleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Yandex Weather Example App',
      home: YandexWeatherExampleHomePage(),
    );
  }
}

class YandexWeatherExampleHomePage extends StatefulWidget {
  const YandexWeatherExampleHomePage({Key? key}) : super(key: key);

  @override
  State<YandexWeatherExampleHomePage> createState() =>
      _YandexWeatherExampleHomePageState();
}

class _YandexWeatherExampleHomePageState
    extends State<YandexWeatherExampleHomePage> {
  //paste your Yandex Weather Api Key here
  final YandexWeather weather =
      YandexWeather(apiKey: const String.fromEnvironment('API_KEY'));

  final double latitude = 59.938237;
  final double longitude = 30.323663;

  //mocked weather response for testing
  Future<WeatherResponse> fetchMockedWeather() async {
    Future<WeatherResponse> mockedWeatherResponse =
        Future.delayed(const Duration(seconds: 1)).then(
      (value) => WeatherResponse.fromJson(
          jsonDecode(jsonMock) as Map<String, dynamic>),
    );
    return mockedWeatherResponse;
  }

  //real weather response from api
  Future<WeatherResponse> fetchWeather() async {
    final WeatherResponse weatherResponse = await weather.getWeather(
      WeatherRequest(
        geoPoint: GeoPoint(
          latitude: latitude,
          longitude: longitude,
        ),
      ),
    );
    return weatherResponse;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: const Text('Get weather')),
              FutureBuilder<WeatherResponse>(
                  future: fetchMockedWeather(),
                  //use this to fetch real data
                  //future: fetchWeather(),
                  builder: (BuildContext context,
                      AsyncSnapshot<WeatherResponse> snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const CircularProgressIndicator();
                    }
                    if (snapshot.hasError) {
                      return const Text('Error Occurred');
                    }
                    if (snapshot.hasData) {
                      return ShowWeather(weatherResponse: snapshot.data);
                    }
                    return const CircularProgressIndicator();
                  })
            ],
          ),
        ),
      ),
    );
  }
}

class ShowWeather extends StatelessWidget {
  const ShowWeather({Key? key, required this.weatherResponse})
      : super(key: key);
  final WeatherResponse? weatherResponse;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Table(
        border: TableBorder.all(),
        children: [
          const TableRow(
            children: [
              Text('Field'),
              Text('Description'),
              Text('Value'),
            ],
          ),
          TableRow(
            children: [
              const Text('now'),
              const Text('Server Unixtime'),
              Text(weatherResponse?.now.toString() ?? 'No Now')
            ],
          ),
          TableRow(
            children: [
              const Text('now_dt'),
              const Text('Server Time UTC'),
              Text(weatherResponse?.nowDt.toString() ?? 'No now_dt')
            ],
          ),
          const TableRow(
            children: [Text('Info Object'), Text(''), Text('')],
          ),
          TableRow(
            children: [
              const Text('lat'),
              const Text('Latitude'),
              Text(weatherResponse?.info?.lat.toString() ?? 'No lat')
            ],
          ),
          TableRow(
            children: [
              const Text('lon'),
              const Text('Longitude'),
              Text(weatherResponse?.info?.lon.toString() ?? 'No lon')
            ],
          ),
          TableRow(
            children: [
              const Text('url'),
              const Text('Settlement page URL'),
              Text(weatherResponse?.info?.lon.toString() ?? 'No url')
            ],
          ),
          const TableRow(
            children: [
              Text('Fact Object'),
              Text(''),
              Text(''),
            ],
          ),
          TableRow(
            children: [
              const Text('temp'),
              const Text('Temperature'),
              Text(weatherResponse?.fact?.temp.toString() ?? 'No temp')
            ],
          ),
          TableRow(
            children: [
              const Text('feels_like'),
              const Text('Fells like temperature'),
              Text(weatherResponse?.fact?.feelsLike.toString() ??
                  'No feels_like')
            ],
          ),
          TableRow(
            children: [
              const Text('temp_water'),
              const Text('Water temp, where actual'),
              Text(weatherResponse?.fact?.tempWater.toString() ??
                  'No feels_like')
            ],
          ),
        ],
      ),
    );
  }
}
