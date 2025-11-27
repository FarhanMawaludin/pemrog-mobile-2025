import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jawara/presentations/widgets/inputField.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.grey[950],
            ),
            onPressed: () => context.pop(),
          ),
          titleSpacing: 0,
          title: Text(
            'Register',
            style: TextStyle(
              color: Colors.grey[950],
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 6,
                        color: Colors.deepPurpleAccent[400],
                        radius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Divider(
                        thickness: 6,
                        color: Colors.grey[300],
                        radius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Divider(
                        thickness: 6,
                        color: Colors.grey[300],
                        radius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ],
                ),
          
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Data Pribadi',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.deepPurpleAccent[400],
                        ),
                      ),
                      Text(
                        'Silahkan lengkapi data pribadi Anda dan \npastikan Anda mengisi data yang benar',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey[500],
                        ),
                      ),
                    ],
                  ),
                ),
          
                InputField(label: 'Nama', hintText: "Masukan Nama Lengkap"),
                InputField(label: 'NIK', hintText: "Masukan NIK Anda"),
                InputField(label: 'Email', hintText: "Masukan Email Anda"),
                InputField(label: 'No. Handphone', hintText: "08XXXXXX"),
                InputField(
                  label: "Jenis Kelamin",
                  hintText: "Pilih Jenis Kelamin Anda",
                  options: ["Perempuan", "Laki-laki"],
                ),
                SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    context.push("/register/akun");
                  },
                  child: Text(
                    "Lanjutkan",
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
