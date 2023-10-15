import 'package:meta/meta.dart';

@immutable
final class User {
  final String name;
  final String id; // TODO: probably should map to Firebase Authentication id.

  User({required this.name, required this.id});

  Map<String, String> toMap() {
    return {
      'name': name,
      'id': id,
    };
  }
}
