import 'package:flutter/material.dart';

import '../../../core/utils/validator.dart';
import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/app_logo.dart';
import '../../../core/widgets/app_text_field.dart';
import '../signup/signup_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController emailController =
  TextEditingController();

  final TextEditingController passwordController =
  TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const SizedBox(height: 40),

                  const Center(
                    child: AppLogo(),
                  ),

                  const SizedBox(height: 40),

                  const Text(
                    "Welcome to Newst",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 30),

                  const Text("Email"),

                  const SizedBox(height: 8),

                  AppTextField(
                    hint: "Enter your email",
                    controller: emailController,
                    validator: AppValidator.email,
                  ),

                  const SizedBox(height: 20),

                  const Text("Password"),

                  const SizedBox(height: 8),

                  AppTextField(
                    hint: "Enter your password",
                    controller: passwordController,
                    obscureText: true,
                    validator: AppValidator.password,
                  ),

                  const SizedBox(height: 30),

                  AppButton(
                    text: "Sign In",
                    onPressed: () {

                      if (formKey.currentState!.validate()) {

                        print("Login Success");

                      }

                    },
                  ),

                  const SizedBox(height: 25),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      const Text(
                        "Don't have an account?",
                      ),

                      TextButton(
                        onPressed: () {

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => SignupScreen(),
                            ),
                          );

                        },
                        child: const Text("Sign Up"),
                      ),

                    ],
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}