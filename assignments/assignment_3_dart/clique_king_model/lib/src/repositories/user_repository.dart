import 'package:firedart/firedart.dart';
import 'package:meta/meta.dart';

import '../models/user.dart';

@immutable
final class UserRepository {
  final Firestore store; // pass it in so it can be mocked.

  UserRepository({required this.store});

  // TODO: Create methods for managing users stored in Firebase Firestore.
  // With Firestore, you have the option to return data once, or return a stream which emits
  // data anytime data in the query changes.
  Future<void> createUser(User user) async {
    final userMap = User(id: "id", name: "name");
    await Firestore.instance.collection('users').add(userMap.toMap());
  }
}
