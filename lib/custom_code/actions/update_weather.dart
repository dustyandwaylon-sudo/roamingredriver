import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/backend.dart';

Future<void> updateWeather() async {
  try {
    final docRef = FirebaseFirestore.instance.collection('weather_cache').doc('red_river_gorge');
    final docSnap = await docRef.get();
    
    bool needsUpdate = true;
    if (docSnap.exists) {
      final data = docSnap.data();
      if (data != null && data['lastUpdated'] != null) {
        try {
          final lastUpdated = DateTime.parse(data['lastUpdated'] as String);
          final difference = DateTime.now().difference(lastUpdated);
          // Only update if cache is older than 15 minutes
          if (difference.inMinutes < 15) {
            needsUpdate = false;
          }
        } catch (_) {
          // If date parsing fails, update cache anyway
        }
      }
    }

    if (needsUpdate) {
      final url = Uri.parse(
        'https://api.open-meteo.com/v1/forecast?latitude=37.7964&longitude=-83.7027&current=temperature_2m,weather_code&temperature_unit=fahrenheit'
      );
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
        final current = json['current'];
        final double temp = (current['temperature_2m'] as num).toDouble();
        final int code = current['weather_code'] as int;
        
        // Map Open-Meteo WMO weather codes to conditions
        String condition = 'Clear';
        if (code == 0) {
          condition = 'Sunny';
        } else if (code >= 1 && code <= 3) {
          condition = 'Cloudy';
        } else if (code == 45 || code == 48) {
          condition = 'Foggy';
        } else if ((code >= 51 && code <= 57) || (code >= 80 && code <= 82)) {
          condition = 'Drizzle';
        } else if (code >= 61 && code <= 67) {
          condition = 'Rainy';
        } else if ((code >= 71 && code <= 77) || code == 85 || code == 86) {
          condition = 'Snowy';
        } else if (code >= 95 && code <= 99) {
          condition = 'Thunderstorm';
        }

        final weatherData = createWeatherCacheRecordData(
          locationName: 'Red River Gorge',
          temperature: temp,
          condition: condition,
          lastUpdated: DateTime.now().toIso8601String(),
        );

        if (docSnap.exists) {
          await docRef.update(weatherData);
        } else {
          await docRef.set(weatherData);
        }
      } else {
        print('Failed to load weather from API: ${response.statusCode}');
      }
    }
  } catch (e) {
    print('Error in updateWeather custom action: $e');
  }
}
