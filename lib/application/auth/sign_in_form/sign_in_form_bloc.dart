import 'dart:async';

import 'package:Cuisson/domain/auth/i_auth_facade.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import 'package:Cuisson/domain/auth/auth_failure.dart';
import 'package:Cuisson/domain/auth/value_objects.dart';

part 'sign_in_form_bloc.freezed.dart';
part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;

  SignInFormBloc(this._authFacade) : super(null);

  @override
  SignInFormState get intialState => SignInFormState.initial();

  @override
  Stream<SignInFormState> mapEventToState(
    SignInFormEvent event,
  ) async* {
    yield* event.map(
        emailChanged: (e) async* {
          yield state.copyWith(
            emailAddress: EmailAddress(e.emailString),
            authFailureOrSuccessOption: none(),
          );
        },
        passwordChanged: (e) async* {
          yield state.copyWith(
            password: Password(e.passwordString),
            authFailureOrSuccessOption: none(),
          );
        },
        registerWithEmailAndPasswordPressed: (e) async* {},

        signInWithEmailAndPasswordPressed: (e) async* {},
        
        signInWithGooglePressed: (e) async* {
          yield state.copyWith(
            isSubmitting: true,
            authFailureOrSuccessOption: none(),
          );
          final failureOrSuccessOption = await _authFacade.signInWithGoogle();
          yield state.copyWith(
            isSubmitting: false,
            authFailureOrSuccessOption: some(failureOrSuccessOption),
          )
        });
  }
}
