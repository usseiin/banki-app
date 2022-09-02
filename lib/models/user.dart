// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

class User {
  final String name;

  User({required this.name});
}

class UserStream {
  late final StreamController<User> _controller;

  UserStream._() {
    _controller = StreamController<User>.broadcast(
      onListen: () {
        _controller.sink.add(_user);
      },
    );
  }

  static final UserStream _instance = UserStream._();

  factory UserStream() => _instance;

  Stream<User> get userStream => _controller.stream;

  final User _user = User(name: 'Hassan Kehinde');

  dispose() {
    _controller.close();
  }
}
