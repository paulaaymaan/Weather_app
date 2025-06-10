
import 'package:dartz/dartz.dart'; 
import 'package:equatable/equatable.dart'; 
import '../../../../core/error/failures.dart'; 
import '../../../../core/usecase/usecase.dart'; 
import '../entities/hourly_forecast_entry_entity.dart'; 
import '../repositories/weather_repository.dart'; 


class GetHourlyForecast
    extends UseCase<List<HourlyForecastEntryEntity>, GetHourlyForecastParams> {
  final WeatherRepository repository;

  GetHourlyForecast(this.repository);

  @override
  Future<Either<Failure, List<HourlyForecastEntryEntity>>> call(
      GetHourlyForecastParams params) async {
    return await repository.getHourlyForecast(params.locationQuery,
        hours: params.hours);
  }
}


class GetHourlyForecastParams extends Equatable {
  final String locationQuery;
  final int hours; 

  const GetHourlyForecastParams(
      {required this.locationQuery, this.hours = 48}); 

  @override
  List<Object> get props => [locationQuery, hours];
}
