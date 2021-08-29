import 'package:flutter/material.dart';
import 'package:flutter_app_auth_p3/auth/ui/pages/login_page.dart';
import 'package:flutter_app_auth_p3/auth/ui/pages/register_page.dart';
import 'package:flutter_app_auth_p3/auth/ui/widgets/custom_btn.dart';
import 'package:flutter_app_auth_p3/servises/routes_helper.dart';
// import 'package:flutter_app_auth_p3/auth/provider/auth_provider.dart';
// import 'package:provider/provider.dart';

class AuthMainPage extends StatelessWidget {
  Function goToLogin(){
    RouteHelper.routeHelper.goToPage(LoginPage.routeName);
  }
  Function goToSignUp(){
    RouteHelper.routeHelper.goToPage(RegisterPage.routeName);
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Container(
          color: Colors.red,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                      padding: EdgeInsets.only(bottom: 100,),
                      width: double.infinity,
                      child: Image.asset('assests/img/TreeVector.png')),
                  Positioned.fill(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Image.asset('assests/img/logo.png'),
                      ))
                ],
              ),
              SizedBox(height: 20,),
              CustomButton(goToLogin, 'LOGIN'),
              CustomButtonSignUp(goToSignUp, 'SING UP'),
              SizedBox(height: 40,),
              Image.asset('assests/img/footer.png')


            ],
          ),
        ));
  }
}