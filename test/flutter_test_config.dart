import 'dart:async';

import 'package:flutter/material.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

Future<void> testExecutable(FutureOr<void> Function() testMain) async {
  return GoldenToolkit.runWithConfiguration(
    () async {
      await loadAppFonts();
      await testMain();
    },
    config: GoldenToolkitConfiguration(),
  );
}

MaterialApp materialWrapper(Widget widget) => MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'Noto Sans JP',
      ),
      home: widget,
      debugShowCheckedModeBanner: false,
    );

class TestDevice {
  static const iPhoneX = Device(
    size: Size(375, 812),
    name: 'iPhoneX',
    devicePixelRatio: 1,
    safeArea: EdgeInsets.only(top: 44, bottom: 34),
  );

  static const all = [Device.phone, TestDevice.iPhoneX, Device.iphone11];
}
