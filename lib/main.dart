import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vimigo_assessment/pages/contact_page.dart';
import 'package:vimigo_assessment/pages/home_page.dart';
import 'package:vimigo_assessment/pages/splash_page.dart';
import 'package:vimigo_assessment/provider/contact_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ContactProvider(),
        ),
      ],
      child: MaterialApp(
        routes: {
          '/': (context) => const SplashPage(),
          '/contact-page': (context) => const ContactPage(),
        },
      ),
    );
  }
}
