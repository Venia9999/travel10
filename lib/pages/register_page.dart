import 'package:flutter/material.dart';
import '../controllers/auth_controller.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final nameCtrl = TextEditingController();
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text(
              "Create Account",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 6),
            const Text(
              "Daftar untuk mulai merencanakan liburan",
              style: TextStyle(color: Colors.grey),
            ),

            const SizedBox(height: 32),

            TextField(
              controller: nameCtrl,
              decoration: const InputDecoration(labelText: "Nama"),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: emailCtrl,
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
                  final success = AuthController.register(
                    nameCtrl.text,
                    emailCtrl.text,
                    passCtrl.text,
                  );

                  if (success) {
                    Navigator.pop(context);
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Register berhasil")),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Email sudah terdaftar")),
                    );
                  }
                },
                child: const Text("Register"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
