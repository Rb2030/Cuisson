import 'package:Cuisson/domain/core/value_objects.dart';
import 'package:Cuisson/domain/auth/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

extension FirebaseUserDomainX on User {
  CurrentUser toDomain() {
    return CurrentUser(id: UniqueId.fromUniqueString(uid));
  }
}
