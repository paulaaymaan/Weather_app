import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/weather_entity.dart';
import '../repositories/weather_repository.dart';

class GetCurrentWeather
    extends UseCase<WeatherEntity, GetCurrentWeatherParams> {
  final WeatherRepository repository;

  GetCurrentWeather(this.repository);

  @override
  Future<Either<Failure, WeatherEntity>> call(
      GetCurrentWeatherParams params) async {

    return await repository.getCurrentWeather(params.locationQuery);
  }
}

class GetCurrentWeatherParams extends Equatable {
  final String locationQuery; 
  const GetCurrentWeatherParams({required this.locationQuery});

  @override
  List<Object> get props => [locationQuery];
}
