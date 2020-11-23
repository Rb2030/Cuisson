import 'package:Cuisson/domain/auth/user.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import 'auth_failure.dart';
import 'value_objects.dart';

//FirebaseAuth, GoogleSignIn

abstract class IAuthFacade {
  
  Future<Option<CurrentUser>> getSignedInUser();

  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });

  Future<Either<AuthFailure, Unit>> uniqueUsernameCheck({
    @required Username username,
  });

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithGoogle(); // Won't have google sign in as I want my own set of users with data
  Future<void> signOut();
}
