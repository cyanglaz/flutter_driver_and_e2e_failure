// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter_driver/flutter_driver.dart';

import 'package:test/test.dart' hide TypeMatcher, isInstanceOf;

void main() {
  group('FlutterDriver', () {
    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() => driver.close());

    test('Simple test',
        () async {
      final Health driverHealth = await driver.checkHealth();
      expect(driverHealth.status, HealthStatus.ok);
    });
  });
}
