import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure([this.properties = const <Object>[]]);
  final List<Object> properties; 

  @override
  List<Object> get props => properties;
}

class ServerFailure extends Failure {
  ServerFailure(String message) : super([message]);
}

class CacheFailure extends Failure {
  const CacheFailure();
  @override
  List<Object> get props => [];
}

class NetworkFailure extends Failure {
  const NetworkFailure();
  @override
  List<Object> get props => [];
}

class LocationFailure extends Failure {
  LocationFailure(String message) : super([message]);
}

class PermissionDeniedFailure extends Failure {
  PermissionDeniedFailure(String message) : super([message]);
}

class ParsingFailure extends Failure {
  ParsingFailure(String message) : super([message]);
}

