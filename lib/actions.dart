class Increment {
  final payload;

  Increment([this.payload = 1]);

  toJson() {
    return {'payload': this.payload};
  }
}
