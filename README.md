# Airport

Package that consults information about airports around the world.

## Usage
```dart
import 'package:airport/airports.dart';

main() async {
  var resultado = await Airports.getAirport("SBSP");
  
  print(resultado.country);
  print(resultado.city);
  print(resultado.name);
  print(resultado.elevation);
  print(resultado.icao);
  print(resultado.lat);
  print(resultado.lon);
  print(resultado.state);
}
```
