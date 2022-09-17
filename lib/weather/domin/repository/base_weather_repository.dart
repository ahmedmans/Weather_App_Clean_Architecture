import 'package:weather/weather/domin/entities/weather.dart';

// this is contracte class to call two layers in sam time or calling domain layer using data layer
abstract class BaseWeatherRepository {
  Future<Weather> getweatherByCityName(String cityName);
}
