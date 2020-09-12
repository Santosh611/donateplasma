import 'package:donateplasma/screens/signup.dart';
import 'package:donateplasma/widgets/custom_text_field.dart';
import 'package:donateplasma/widgets/question_row.dart';
import 'package:donateplasma/widgets/sign_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screen_scaler/flutter_screen_scaler.dart';
import 'package:donateplasma/screens/HomeScreen.dart';

class Login extends StatelessWidget {
  static const routeName = '/login';
  @override
  Widget build(BuildContext context) {
    ScreenScaler scale = ScreenScaler()..init(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/images/logo.png',
                  height: scale.getHeight(20)),
              SizedBox(height: scale.getHeight(3)),
              CustomTextField(
                keyboardType: TextInputType.emailAddress,
                hintText: ' Email',
              ),
              const SizedBox(height: 15),
              CustomTextField(
                keyboardType: TextInputType.emailAddress,
                hintText: ' Phone Number',
              ),
              const SizedBox(height: 15),
              CustomTextField(
                hintText: ' Password',
              ),
              const SizedBox(height: 25),
              SignButton(
                text: 'Log in',
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed(HomeScreen.routeName);
                },
              ),
              const SizedBox(height: 35),
              QuestionRow(
                question: "Don't have an account?",
                functionText: 'Create now',
                widget: SignUp(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
