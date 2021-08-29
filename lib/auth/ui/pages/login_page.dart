import 'package:flutter/material.dart';
import 'package:flutter_app_auth_p3/auth/provider/auth_provider.dart';
import 'package:flutter_app_auth_p3/auth/ui/pages/reset_password.dart';
import 'package:flutter_app_auth_p3/auth/ui/widgets/custom_TF.dart';
import 'package:flutter_app_auth_p3/auth/ui/widgets/custom_btn.dart';
import 'package:flutter_app_auth_p3/servises/routes_helper.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  static final routeName = 'login';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Consumer<AuthProvider>(
        builder: (context, provider, x) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 80,),
              Image.asset('assests/img/logo.png'),
              SizedBox(height: 20,),
              CustomTextfield('Email','info@kanji.com', provider.emailController),
              CustomTextfield('Password', '********',provider.passwordController),
              SizedBox(height: 10,),
              GestureDetector(
                onTap: () {
                  RouteHelper.routeHelper.goToPage(ResetPasswordPage.routeName);
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Forget Password?',
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Color(0xffF5A623)),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                  width: 200,
                  height: 60,
                  child: CustomButton(provider.login, 'LOGIN')),
              SizedBox(height: 50,),
              Image.asset('assests/img/footer.png'),
            ],
          );
        },
      ),
    );
  }
}