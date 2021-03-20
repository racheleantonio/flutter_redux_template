import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../main.dart';

@immutable
class ZoneState {
  ZoneState({
    @required this.zones,
  });

  final List<Color> zones;

  factory ZoneState.initial() {
    return ZoneState(
      zones: [
        Colors.white10,
        Colors.white10,
        Colors.white10,
        Colors.white10,
        Colors.white10,
        Colors.white10,
        Colors.white10,
        Colors.white10,
        Colors.white10,
        Colors.white10,
        Colors.white10,
        Colors.white10,
        Colors.white10,
        Colors.white10,
        Colors.white10,
        Colors.white10,
        Colors.white10,
        Colors.white10,
        Colors.white10,
        Colors.white10,
        Colors.white10,
      ],
    );
  }

  ZoneState copyWith({
    List<Color> zones,
  }) {
    return ZoneState(
      zones: zones ?? this.zones,
    );
  }

  toJson() {
    return {
      'zoneState': {'zones': zones}
    };
  }
}
