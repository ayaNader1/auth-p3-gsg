import 'package:flutter/material.dart';
import 'package:flutter_app_auth_p3/auth/provider/auth_provider.dart';
import 'package:flutter_app_auth_p3/auth/ui/widgets/custom_TF.dart';
import 'package:flutter_app_auth_p3/auth/ui/widgets/custom_btn.dart';
import 'package:provider/provider.dart';

class RegisterPage extends StatelessWidget {
  static final routeName = 'register';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Consumer<AuthProvider>(
        builder: (context, provider, x) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 70,),
              Image.asset('assests/img/logo.png'),
              SizedBox(height: 10,),
              CustomTextfield('Email', 'info@kanji.com',provider.emailController),
              CustomTextfield('Password','********', provider.passwordController),
              CustomTextfield('Confirm Password','********', provider.confirmPasswordController),
              SizedBox(height: 20,),
              Container(
                  width: 200,
                  height: 60,
                  child: CustomButtonSignUp(provider.register, 'SIGN UP')),
              SizedBox(height: 50,),
              Image.asset('assests/img/footer.png'),
            ],
          );
        },
      ),
    );
  }
}