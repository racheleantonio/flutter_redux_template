import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../main.dart';

@immutable
class AppState {
  AppState({@required this.name, @required this.count, @required this.zones});

  final String name;
  final int count;
  final List<Color> zones;

  factory AppState.initial() {
    return AppState(
      name: "Antonio",
      count: 0,
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

  AppState copyWith({
    String name,
    int count,
    final List<Color> zones,
  }) {
    return AppState(
      name: name ?? this.name,
      count: count ?? this.count,
      zones: zones ?? this.zones,
    );
  }

  toJson() {
    var c = zones.toString();
    return {
      'AppState': {'count': count, 'name': name, 'zones': c}
    };
  }
}
