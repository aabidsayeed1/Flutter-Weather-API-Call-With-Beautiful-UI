import 'package:geolocator/geolocator.dart';

class Location {
  double latitude;
  double longitude;
  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      // print(position);
      latitude = position.latitude;
      longitude = position.longitude;
      // print('$longitude and $latitude');
    } catch (e) {
      print(e);
    }
  }
}
