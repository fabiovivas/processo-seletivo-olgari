// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_presenter.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RegisterPresenter on _RegisterPresenter, Store {
  final _$emailAtom = Atom(name: '_RegisterPresenter.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$emailErrorAtom = Atom(name: '_RegisterPresenter.emailError');

  @override
  String get emailError {
    _$emailErrorAtom.reportRead();
    return super.emailError;
  }

  @override
  set emailError(String value) {
    _$emailErrorAtom.reportWrite(value, super.emailError, () {
      super.emailError = value;
    });
  }

  final _$isEmailValidAtom = Atom(name: '_RegisterPresenter.isEmailValid');

  @override
  bool get isEmailValid {
    _$isEmailValidAtom.reportRead();
    return super.isEmailValid;
  }

  @override
  set isEmailValid(bool value) {
    _$isEmailValidAtom.reportWrite(value, super.isEmailValid, () {
      super.isEmailValid = value;
    });
  }

  final _$passwordAtom = Atom(name: '_RegisterPresenter.password');

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$_RegisterPresenterActionController =
      ActionController(name: '_RegisterPresenter');

  @override
  void setEmail(String email) {
    final _$actionInfo = _$_RegisterPresenterActionController.startAction(
        name: '_RegisterPresenter.setEmail');
    try {
      return super.setEmail(email);
    } finally {
      _$_RegisterPresenterActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateEmail() {
    final _$actionInfo = _$_RegisterPresenterActionController.startAction(
        name: '_RegisterPresenter.validateEmail');
    try {
      return super.validateEmail();
    } finally {
      _$_RegisterPresenterActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(String password) {
    final _$actionInfo = _$_RegisterPresenterActionController.startAction(
        name: '_RegisterPresenter.setPassword');
    try {
      return super.setPassword(password);
    } finally {
      _$_RegisterPresenterActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email: ${email},
emailError: ${emailError},
isEmailValid: ${isEmailValid},
password: ${password}
    ''';
  }
}
