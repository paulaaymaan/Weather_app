import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/forecast_entry_entity.dart';
import '../repositories/weather_repository.dart';

class GetForecast
    extends UseCase<List<ForecastEntryEntity>, GetForecastParams> {
  final WeatherRepository repository;

  GetForecast(this.repository);

  @override
  Future<Either<Failure, List<ForecastEntryEntity>>> call(
      GetForecastParams params) async {
    return await repository.getForecast(params.locationQuery);
  }
}

class GetForecastParams extends Equatable {
  final String locationQuery;
  const GetForecastParams({required this.locationQuery});

  @override
  List<Object> get props => [locationQuery];
}
