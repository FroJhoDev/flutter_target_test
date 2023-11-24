// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_base.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoginBase on _LoginBase, Store {
  late final _$stateAtom = Atom(name: '_LoginBase.state', context: context);

  @override
  Status get state {
    _$stateAtom.reportRead();
    return super.state;
  }

  @override
  set state(Status value) {
    _$stateAtom.reportWrite(value, super.state, () {
      super.state = value;
    });
  }

  late final _$signInUserAsyncAction =
      AsyncAction('_LoginBase.signInUser', context: context);

  @override
  Future<void> signInUser(
      {required String username, required String password}) {
    return _$signInUserAsyncAction
        .run(() => super.signInUser(username: username, password: password));
  }

  @override
  String toString() {
    return '''
state: ${state}
    ''';
  }
}
