import 'package:flutter/material.dart';
import 'dart:async';

import 'package:is_wear/is_wear.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _isCurrentDeviceWear = 'Unknown';
  final _isWearPlugin = IsWear();

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    _isWearPlugin.check().then((value) {
      setState(() {
        _isCurrentDeviceWear = value! ? 'Wear Device' : 'Not a Wear Device';
      });
    }).catchError((onError) {
      setState(() {
        _isCurrentDeviceWear = 'Failed in wear device detection.';
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Text('$_isCurrentDeviceWear\n'),
        ),
      ),
    );
  }
}
