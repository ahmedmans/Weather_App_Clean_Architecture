import 'package:weather/weather/data/datasource/remote_datasource.dart';
import 'package:weather/weather/domin/entities/weather.dart';
import 'package:weather/weather/domin/repository/base_weather_repository.dart';

class WeatherRepository implements BaseWeatherRepository {
  final BaseRemoteDataSource baseRemoteDataSource;

  WeatherRepository(this.baseRemoteDataSource);

  @override
  Future<Weather> getweatherByCityName(String cityName) async {
    return (await baseRemoteDataSource.getWeatherByCuntryName(cityName))!;
  }
}
