// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../ui/views/authentication/authentication_view.dart';
import '../ui/views/home/home_view.dart';

class Routes {
  static const String authenticationViewRoute = '/';
  static const String homeViewRoute = '/home-view';
  static const all = <String>{
    authenticationViewRoute,
    homeViewRoute,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.authenticationViewRoute, page: AuthenticationView),
    RouteDef(Routes.homeViewRoute, page: HomeView),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    AuthenticationView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => AuthenticationView(),
        settings: data,
      );
    },
    HomeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomeView(),
        settings: data,
      );
    },
  };
}
