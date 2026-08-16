import 'package:flutter/material.dart';

import '../../../core/utils/validator.dart';
import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/app_logo.dart';
import '../../../core/widgets/app_text_field.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController nameController =
  TextEditingController();

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
                    "Create Account",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 30),

                  const Text("Full Name"),

                  const SizedBox(height: 8),

                  AppTextField(
                    hint: "Enter your name",
                    controller: nameController,
                    validator: AppValidator.name,
                  ),

                  const SizedBox(height: 20),

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
                    text: "Sign Up",
                    onPressed: () {

                      if (formKey.currentState!.validate()) {

                        print("Sign Up Success");

                      }

                    },
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