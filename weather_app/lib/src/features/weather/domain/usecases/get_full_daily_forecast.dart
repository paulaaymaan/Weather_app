
import 'package:dartz/dartz.dart'; 
import 'package:equatable/equatable.dart'; 
import '../../../../core/error/failures.dart'; 
import '../../../../core/usecase/usecase.dart'; 
import '../entities/forecast_entry_entity.dart'; 
import '../repositories/weather_repository.dart'; 


class GetFullDailyForecast
    extends UseCase<List<ForecastEntryEntity>, GetFullDailyForecastParams> {
  final WeatherRepository
      repository; 

  GetFullDailyForecast(this.repository); 

  @override
  Future<Either<Failure, List<ForecastEntryEntity>>> call(
      GetFullDailyForecastParams params) async {
    
    return await repository.getFullDailyForecast(params.locationQuery);
  }
}


class GetFullDailyForecastParams extends Equatable {
  final String locationQuery; 

  const GetFullDailyForecastParams({required this.locationQuery});

  @override
  List<Object> get props => [locationQuery]; 
}
