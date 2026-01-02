import 'package:flutter/material.dart';
import '../controllers/auth_controller.dart';
import '../models/user.dart';
import 'register_page.dart';
import 'home_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final TextEditingController emailCtrl = TextEditingController();
  final TextEditingController passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Welcome Back 👋",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 6),
            const Text(
              "Login untuk merencanakan perjalananmu",
              style: TextStyle(color: Colors.grey),
            ),

            const SizedBox(height: 32),

            TextField(
              controller: emailCtrl,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(labelText: "Email"),
            ),
            const SizedBox(height: 16),

            TextField(
              controller: passCtrl,
              obscureText: true,
              decoration: const InputDecoration(labelText: "Password"),
            ),

            const SizedBox(height: 28),

            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  final email = emailCtrl.text.trim();
                  final password = passCtrl.text.trim();

                  User? user = AuthController.login(email, password);

                  if (user != null) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (_) => HomePage(user: user),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Email atau password salah"),
                      ),
                    );
                  }
                },
                child: const Text("Login"),
              ),
            ),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Belum punya akun? "),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => RegisterPage()),
                    );
                  },
                  child: const Text(
                    "Register",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
