import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jawara/presentations/widgets/inputField.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          titleSpacing: 0,
          leading: InkWell(
            onTap: () => context.pop(),
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.grey[950],
            ),
          ),
          title: Text(
            "Login",
            style: TextStyle(
              color: Colors.grey[950],
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(top: 60),
                  child: Column(
                    children: [
                      Text(
                        'Jawara Pintar',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurpleAccent[400],
                        ),
                      ),
                      Text(
                        'Solusi digital untuk manajemen keuangan \ndan kegiatan warga',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey[700],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                InputField(label: "Email", hintText: "Masukkan email"),
                InputField(label: "Password", hintText: "Masukkan password", isPassword: true),
                const SizedBox(height: 30),
                TextButton(
                  onPressed: () {
                    context.push('/homepage');
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.deepPurpleAccent[400]),
                    shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                    padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 16, horizontal: 20)),
                    minimumSize: WidgetStateProperty.all(Size(double.infinity, 50)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
