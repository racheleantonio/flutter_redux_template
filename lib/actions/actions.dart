class Increment {
  final payload;

  Increment([this.payload = 1]);

  toJson() {
    return {'payload': this.payload};
  }
}

class ChangeName {
  final payload;

  ChangeName(this.payload);

  toJson() {
    return {'payload': this.payload};
  }
}

class Startup {
  Startup();

  toJson() {
    return {};
  }
}
