import 'package:flutter/material.dart';
import 'package:flutter_app_auth_p3/auth/provider/auth_provider.dart';
import 'package:flutter_app_auth_p3/auth/ui/widgets/custom_TF.dart';
import 'package:flutter_app_auth_p3/auth/ui/widgets/custom_btn.dart';
import 'package:provider/provider.dart';

class ResetPasswordPage extends StatelessWidget {
  static final routeName = 'reset';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Consumer<AuthProvider>(
        builder: (context, provider, x) {
          return Column(
            children: [
              SizedBox(height: 70,),
              Image.asset('assests/img/logo.png'),
              SizedBox(height: 70,),
              CustomTextfield('Email','info@kanji.com', provider.emailController),
              SizedBox(height: 20,),
              Container(
                  width: 200,
                  height: 60,
                  child: CustomButton(provider.resetPassword, 'RESET')),
              SizedBox(height: 100,),
              Image.asset('assests/img/footer.png'),
            ],
          );
        },
      ),
    );
  }
}