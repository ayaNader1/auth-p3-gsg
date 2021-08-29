import 'package:flutter/material.dart';
import 'package:flutter_app_auth_p3/auth/helper/auth_helper.dart';
import 'package:flutter_app_auth_p3/auth/ui/pages/home_page.dart';
import 'package:flutter_app_auth_p3/servises/custom_dialog.dart';
import 'package:flutter_app_auth_p3/servises/routes_helper.dart';

class AuthProvider extends ChangeNotifier {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  resetControllers() {
    emailController.clear();
    passwordController.clear();
  }

  register() async {
    if (passwordController == confirmPasswordController){
      try {
        await AuthHelper.authHelper
            .signup(emailController.text, passwordController.text);
        await AuthHelper.authHelper.verifyEmail();
        await AuthHelper.authHelper.logout();
      } on Exception catch (e) {
        // TODO
      }
    } else {
      CustomDialoug.customDialoug
          .showCustomDialoug('Check Password and Confirm Password please');
    }

// navigate to login

    resetControllers();
  }

  login() async {
    await AuthHelper.authHelper
        .signin(emailController.text, passwordController.text);
      RouteHelper.routeHelper.goToPageWithReplacement(HomePage.routeName);
    resetControllers();
  }

  sendVericiafion() {
    AuthHelper.authHelper.verifyEmail();
    AuthHelper.authHelper.logout();
  }

  resetPassword() async {
    AuthHelper.authHelper.resetPassword(emailController.text);
    resetControllers();
  }
}

