import 'package:flutter/material.dart';
import 'package:login_with_rest_api_with_provider/provider/auth_provider.dart';
import 'package:login_with_rest_api_with_provider/screens/favourite/login_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers:[
    ChangeNotifierProvider(create: (_) => AuthProvider() )
        ] ,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginScreen(),
      ),
    );
  }
}

