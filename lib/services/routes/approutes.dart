import 'package:dictionaryapp/riverpod/bottomnav.dart';
import 'package:dictionaryapp/riverpod/counterview.dart';
import 'package:dictionaryapp/services/routes/routesconstants.dart';
import 'package:dictionaryapp/views/account/signin.dart';
import 'package:dictionaryapp/views/account/signup.dart';
import 'package:dictionaryapp/views/bookmark/bookmark_view.dart';
import 'package:dictionaryapp/views/homepage/homepage_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Approutes {
  GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        name: RoutesConstants.splash,
        path: '/',
        builder: (context, state) {
          return const CounterHome();
        },
      ),
      GoRoute(
        name: RoutesConstants.bookmarks,
        path: '/bookmarks/:userId',
        pageBuilder: (context, state) {
          return MaterialPage(
            child: BookmarkView(userId: state.pathParameters['userId']!),
          );
        },
      ),
      GoRoute(
        name: RoutesConstants.homepage,
        path: '/homepage',
        pageBuilder: (context, state) {
          return MaterialPage(child: HomePager());
        },
      ),
      GoRoute(
        name: RoutesConstants.signin,
        path: '/signin',
        pageBuilder: (context, state) {
          return MaterialPage(child: Signin());
        },
      ),
      GoRoute(
        name: RoutesConstants.signup,
        path: '/signup',
        pageBuilder: (context, state) {
          return MaterialPage(child: Signup());
        },
      ),
      GoRoute(
        name: RoutesConstants.bottomnav,
        path: '/bottomnav',
        pageBuilder: (context, state) {
          return MaterialPage(child: Bottomnav());
        },
      ),
    ],
  );
}
