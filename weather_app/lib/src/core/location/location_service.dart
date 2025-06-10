import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:geolocator/geolocator.dart';
import 'package:task_manager_app/src/core/error/failures.dart';

class LocationService {
  Future<Either<Failure, Position>> getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
 
      return Left(LocationFailure('Location services are disabled.'));
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
     
        return Left(
            PermissionDeniedFailure('Location permissions are denied.'));
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Left(PermissionDeniedFailure(
          'Location permissions are permanently denied. Please enable them from settings.'));
    }


    try {
  
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
        timeLimit: Duration(seconds: 10), 
      );
      return Right(position);
    } on TimeoutException {
      return Left(
          LocationFailure('Failed to get location within the time limit.'));
    } catch (e) {
      return Left(LocationFailure('Error getting location: ${e.toString()}'));
    }
  }


}
