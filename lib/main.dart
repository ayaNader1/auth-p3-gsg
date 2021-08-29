import 'package:flutter/material.dart';
import 'package:flutter_app_auth_p3/auth/ui/pages/home_page.dart';
import 'package:flutter_app_auth_p3/auth/ui/pages/main_page.dart';
import 'package:flutter_app_auth_p3/servises/routes_helper.dart';
import 'package:provider/provider.dart';
import 'auth/provider/auth_provider.dart';
import 'package:firebase_core/firebase_core.dart';

import 'auth/ui/pages/login_page.dart';
import 'auth/ui/pages/register_page.dart';
import 'auth/ui/pages/reset_password.dart';


void main() {
  // runApp(MaterialApp(home: AuthMainPage()));
  runApp(ChangeNotifierProvider<AuthProvider>(
  create: (context)=>AuthProvider(),

  child: MaterialApp(
      routes: {
        LoginPage.routeName: (context) => LoginPage(),
        RegisterPage.routeName: (context) => RegisterPage(),
        ResetPasswordPage.routeName: (context) => ResetPasswordPage(),
        HomePage.routeName: (context) => HomePage(),
      },
      navigatorKey: RouteHelper.routeHelper.navKey,
      home: FirebaseConfiguration())));
}

class FirebaseConfiguration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FutureBuilder<FirebaseApp>(
        future: Firebase.initializeApp(),
        builder: (context, AsyncSnapshot<FirebaseApp> dataSnapShot) {
          if (dataSnapShot.hasError) {
            return Scaffold(
              backgroundColor: Colors.red,
              body: Center(
                child: Text(dataSnapShot.error.toString()),
              ),
            );
          }
          if (dataSnapShot.connectionState == ConnectionState.done) {
            return AuthMainPage();
          }
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        });
  }
}


