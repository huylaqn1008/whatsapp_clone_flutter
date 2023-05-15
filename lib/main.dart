import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_social/common/routes/routes.dart';
import 'package:flutter_social/common/theme/dark_theme.dart';
import 'package:flutter_social/common/theme/light_theme.dart';
import 'package:flutter_social/feature/auth/pages/login_page.dart';
import 'package:flutter_social/feature/auth/pages/user_info_page.dart';
import 'package:flutter_social/feature/auth/pages/verification_page.dart';
import 'package:flutter_social/feature/welcome/pages/welcome_page.dart';
import 'package:flutter_social/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp Mola',
      theme: lightTheme(),
      darkTheme: darkTheme(),
      themeMode: ThemeMode.system,
      home: const WelcomePage(),
      onGenerateRoute: Routes.onGenerateRoute,
    );
  }
}
