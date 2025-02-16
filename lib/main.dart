import 'package:flutter/material.dart';
import 'package:strato_sales/screens/login_screen.dart';

void main() {
  runApp(const StratoSalesApp());
}

class StratoSalesApp extends StatelessWidget {
  const StratoSalesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StratoSales',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const LoginScreen(),
    );
  }
}
