class Airport {
  final double lat;
  final double lon;
  final String name;
  final String city;
  final String state;
  final String country;
  final int elevation;
  final String icao;

  const Airport({
    required this.lat,
    required this.lon,
    required this.name,
    required this.city,
    required this.state,
    required this.country,
    required this.elevation,
    required this.icao,
  });

  factory Airport.fromJson(Map<String, dynamic> json) => Airport(
        lat: json['lat'] as double,
        lon: json['lon'] as double,
        name: json['name'] as String,
        city: json['city'] as String,
        state: json['state'] as String,
        country: json['country'] as String,
        elevation: json['elevation'] as int,
        icao: json['icao'] as String,
      );
}
