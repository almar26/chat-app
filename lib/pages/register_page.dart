import 'package:chat_app/services/auth/auth_service.dart';
import 'package:chat_app/components/my_button.dart';
import 'package:chat_app/components/my_textfield.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  //final void Function()? onTap;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();
  final TextEditingController _confirmPwController = TextEditingController();

  // tap to go to login page
  final void Function()? onTap;

  RegisterPage({super.key, required this.onTap});

  // login method
  void register(BuildContext context) {
    // get auth service
    final auth = AuthService();

    // password match -> create user
    if (_pwController.text == _confirmPwController.text) {
      try {
        auth.signUpWithEmailPassword(_emailController.text, _pwController.text);
      } catch (e) {
        showDialog(
            // ignore: use_build_context_synchronously
            context: context,
            builder: (context) => const AlertDialog(
                  title: Text(
                    "Invalid Details",
                    style: TextStyle(fontSize: 16),
                  ),
                ));
      }
    }
    // password dont match -> tell user to fix
    else {
      showDialog(
          // ignore: use_build_context_synchronously
          context: context,
          builder: (context) => const AlertDialog(
                title: Text(
                  "Passwords don't match!",
                  style: TextStyle(fontSize: 16),
                ),
              ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            Icon(Icons.message,
                size: 55, color: Theme.of(context).colorScheme.inversePrimary),

            const SizedBox(
              height: 25,
            ),

            // message, app slogan
            Text(
              "Let's create an account for you",
              style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),

            const SizedBox(
              height: 25,
            ),

            // email textfield
            MytextField(
                controller: _emailController,
                hintText: "Email",
                obscureText: false),

            const SizedBox(
              height: 10,
            ),

            // password textfield
            MytextField(
                controller: _pwController,
                hintText: "Password",
                obscureText: true),

            const SizedBox(
              height: 10,
            ),

            // Confirm password textfield
            MytextField(
                controller: _confirmPwController,
                hintText: "Confirm password",
                obscureText: true),

            const SizedBox(
              height: 25,
            ),

            // sign up button
            MyButton(text: "Register", onTap: () => register(context)),

            const SizedBox(
              height: 25,
            ),

            // already have an account? Login here
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.primary),
                ),
                const SizedBox(
                  width: 4,
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Text(
                    "Login now",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
