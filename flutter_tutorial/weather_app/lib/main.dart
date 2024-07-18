import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter/material.dart';
import 'weather_service.dart';

void main() async {
  await dotenv.load();
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WeatherScreen(),
    );
  }
}

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  final WeatherService _weatherService = WeatherService();
  Map<String, dynamic>? _weatherData;
  bool _isLoading = false;
  String _city = 'London';

  void _fetchWeather() async {
    setState(() {
      _isLoading = true;
    });
    try {
      final data = await _weatherService.fetchWeather(_city);
      setState(() {
        _weatherData = data;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Failed to load weather data')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(labelText: 'Enter City'),
              onChanged: (value) {
                setState(() {
                  _city = value;
                });
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _fetchWeather,
              child: const Text('Get Weather'),
            ),
            if (_isLoading)
              const CircularProgressIndicator(),
            if (_weatherData != null)
              Expanded(
                child: ListView(
                  children: [
                    ListTile(
                      title: Text('Temperature: ${_weatherData!['main']['temp']}°C'),
                    ),
                    ListTile(
                      title: Text('Weather: ${_weatherData!['weather'][0]['description']}'),
                    ),
                    ListTile(
                      title: Text('Humidity: ${_weatherData!['main']['humidity']}%'),
                    ),
                    ListTile(
                      title: Text('Wind Speed: ${_weatherData!['wind']['speed']} m/s'),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
