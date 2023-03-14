// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:emergency_app/views/forgetpass_view.dart' as _i5;
import 'package:emergency_app/views/login_view.dart' as _i3;
import 'package:emergency_app/views/signup_view.dart' as _i4;
import 'package:emergency_app/views/start_view.dart' as _i2;
import 'package:flutter/material.dart' as _i6;
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i7;

class Routes {
  static const startView = '/';

  static const loginView = '/login-view';

  static const signUpView = '/sign-up-view';

  

  static const forgetPasswordView = '/forget-password-view';

  static const all = <String>{
    startView,
    loginView,
    signUpView,
    forgetPasswordView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.startView,
      page: _i2.StartView,
    ),
    _i1.RouteDef(
      Routes.loginView,
      page: _i3.LoginView,
    ),
    _i1.RouteDef(
      Routes.signUpView,
      page: _i4.SignUpView,
    ),
    _i1.RouteDef(
      Routes.signUpView,
      page: _i4.SignUpView,
    ),
    _i1.RouteDef(
      Routes.forgetPasswordView,
      page: _i5.ForgetPasswordView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.StartView: (data) {
      return _i6.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.StartView(),
        settings: data,
        maintainState: false,
      );
    },
    _i3.LoginView: (data) {
      return _i6.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.LoginView(),
        settings: data,
        maintainState: false,
      );
    },
    _i4.SignUpView: (data) {
      return _i6.MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.SignUpView(),
        settings: data,
        maintainState: false,
      );
    },
    _i5.ForgetPasswordView: (data) {
      return _i6.MaterialPageRoute<dynamic>(
        builder: (context) => const _i5.ForgetPasswordView(),
        settings: data,
        maintainState: false,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;
  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

extension NavigatorStateExtension on _i7.NavigationService {
  Future<dynamic> navigateToStartView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.startView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.loginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSignUpView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.signUpView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

 
  Future<dynamic> navigateToForgetPasswordView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.forgetPasswordView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithStartView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.startView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.loginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithSignUpView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.signUpView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  
  Future<dynamic> replaceWithForgetPasswordView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.forgetPasswordView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
