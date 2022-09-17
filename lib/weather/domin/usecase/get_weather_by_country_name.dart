import 'package:weather/weather/domin/entities/weather.dart';
import 'package:weather/weather/domin/repository/base_weather_repository.dart';

class GetWeatherByCountryName {
  final BaseWeatherRepository weatherRepository;

  GetWeatherByCountryName(this.weatherRepository);

  Future<Weather> execute(String cityName) async {
    return await weatherRepository.getweatherByCityName(cityName);
  }
}
