import 'package:meta/meta.dart';

@immutable
class AppState {
  AppState({
    @required this.name,
    @required this.count,
  });

  final String name;
  final int count;

  factory AppState.initial() {
    return AppState(
      name: "Antonio",
      count: 0,
    );
  }

  AppState copyWith({
    String name,
    int count,
  }) {
    return AppState(
      name: name ?? this.name,
      count: count ?? this.count,
    );
  }

  toJson() {
    return {
      'state': {'count': this.count, 'name': this.name}
    };
  }
}
