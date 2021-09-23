library airports;

import 'dart:convert';
import 'package:http/http.dart' as http;

import 'models/models.dart';

class Airports {
  static Future<Airport> getAirport(String filterIcao) async {
    List<Airport> AirportsList = [];
    var result;

    var url =
        "https://raw.githubusercontent.com/zitske/NodeJS---Study/master/thing.json";

    var response = await http.get(Uri.parse(url));

    var data = json.decode(response.body);

    AirportsList =
        (data as List).map((data) => new Airport.fromJson(data)).toList();

    for (int i = 0; i < AirportsList.length; i++) {
      if (AirportsList[i].icao.toString().contains(filterIcao)) {
        result = AirportsList[i];
      }
    }
    if (result == null) {
      return new Airport(
        lat: 0,
        lon: 0,
        name: "Not Found",
        city: "Not Found",
        state: "Not Found",
        country: "Not Found",
        elevation: 0,
        icao: "Not Found",
      );
    } else {
      return result;
    }
  }
}
