
import 'package:dartz/dartz.dart'; 
import 'package:equatable/equatable.dart'; 
import '../../../../core/error/failures.dart'; 
import '../../../../core/usecase/usecase.dart';
import '../entities/alert_entity.dart'; 
import '../repositories/weather_repository.dart'; 


class GetSevereWeatherAlerts
    extends UseCase<List<AlertEntity>, GetSevereWeatherAlertsParams> {
  final WeatherRepository repository;

  GetSevereWeatherAlerts(this.repository);

  @override
  Future<Either<Failure, List<AlertEntity>>> call(
      GetSevereWeatherAlertsParams params) async {
    return await repository.getSevereWeatherAlerts(params.locationQuery);
  }
}


class GetSevereWeatherAlertsParams extends Equatable {
  final String locationQuery;

  const GetSevereWeatherAlertsParams({required this.locationQuery});

  @override
  List<Object> get props => [locationQuery];
}
