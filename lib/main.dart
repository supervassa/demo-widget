import 'package:flutter/material.dart';
import 'package:flutter_application_1/dashboard.dart';
import 'package:flutter_application_1/widgets/widget_button.dart';
import 'package:flutter_application_1/widgets/widget_textfield.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

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
              namabutton: 'Tampil Data',
              onPressed: () {
                // MaterialPageRoute route = MaterialPageRoute(
                //   builder: (context) => DashboardPage(),
                // );
                // Navigator.push(context, route);
                setState(() {
                  usernameController.text;
                  paswordController.text;
                });
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
}
