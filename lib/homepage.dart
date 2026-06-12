import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/widget_button.dart';
import 'package:flutter_application_1/widgets/widget_textfield.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController paswordController = TextEditingController();
  bool passenable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            WidgetTextfield(
              hintText: 'Masukkan Username Anda',
              textEditingController: usernameController,
              keyboardType: TextInputType.text,
            ),

            SizedBox(height: 8),
            WidgetTextfield(
              hintText: 'Masukkan Password Anda',
              textEditingController: paswordController,
              keyboardType: TextInputType.visiblePassword,
              obscureText: passenable,
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    passenable = !passenable;
                  });
                },
                icon: Icon(
                  passenable ? Icons.visibility : Icons.visibility_off,
                ),
              ),
            ),

            SizedBox(height: 8),
            WidgetButton(
              namabutton: 'Masuk',
              onPressed: () {
                // MaterialPageRoute route = MaterialPageRoute(
                //   builder: (context) => DashboardPage(),
                // );
                // Navigator.push(context, route);
                // setState(() {
                //   usernameController.text;
                //   paswordController.text;
                // });

                _checValue(usernameController.text, paswordController.text);
              },
            ),

            SizedBox(height: 8),
            Text(
              'Username: ${usernameController.text},\nPassword: ${paswordController.text}',
            ),
          ],
        ),
      ),
    );
  }

  void _checValue(String username, String password) {
    if (username.length == 9 && password.length >= 8) {
      SnackBar snackBar = SnackBar(content: Text('Username $username - Password $password sudah benar'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else {
      const snackBar = SnackBar(content: Text('Pastikan username dan password sudah benar'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }
}
