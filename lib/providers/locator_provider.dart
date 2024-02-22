// ignore_for_file: use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:flutter_job_boarding/components/app_colors.dart';
import 'package:flutter_job_boarding/components/helper_methods.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

final hasPermissionProvider = StateProvider<bool>((ref) {
  return false;
});

final locatorProvider =
    FutureProvider.family<String, BuildContext>((ref, context) async {
  // check permission
  bool serviceEnabled = ref.watch(hasPermissionProvider.notifier).state;
  LocationPermission? permission;
  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    HelperMethods.showSnackBar(
      context,
      "'Location services are disabled. Please enable the services'",
      AppColors.colorRed,
    );
    serviceEnabled = false;
  }

  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      HelperMethods.showSnackBar(
        context,
        "Location permissions are denied",
        AppColors.colorRed,
      );
      serviceEnabled = false;
    }
  }

  if (permission == LocationPermission.deniedForever) {
    HelperMethods.showSnackBar(
      context,
      "Location permissions are permanently denied, we cannot request permissions.",
      AppColors.colorRed,
    );
    serviceEnabled = false;
  }

  serviceEnabled = true;

  if (serviceEnabled) {
    Position? position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );

    final List<Placemark> placemarks =
        await placemarkFromCoordinates(position.latitude, position.longitude);

    Placemark place = placemarks[0];

    return place.country.toString();
  }
});
