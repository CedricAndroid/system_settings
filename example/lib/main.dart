import 'package:flutter/material.dart';
import 'package:system_settings/system_settings.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: ListView(
            padding: EdgeInsets.all(20.0),
            children: <Widget>[
              ElevatedButton(
                child: Text('App info'),
                onPressed: () => SystemSettings.app(),
              ),
              ElevatedButton(
                child: Text('Settings'),
                onPressed: () => SystemSettings.system(),
              ),
              ElevatedButton(
                child: Text('Security'),
                onPressed: () => SystemSettings.security(),
              ),
              ElevatedButton(
                child: Text('Device info'),
                onPressed: () => SystemSettings.deviceInfo(),
              ),
              ElevatedButton(
                child: Text('Data usage'),
                onPressed: () => SystemSettings.dataUsage(),
              ),
              ElevatedButton(
                child: Text('Privacy'),
                onPressed: () => SystemSettings.privacy(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
