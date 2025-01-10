
import 'package:bibliofind/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';  // Import GetX package

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(  
      title: 'BiblioFind',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: AppPages.INITIAL, // Tentukan route awal
      getPages: AppPages.routes, // Daftarkan semua route yang sudah didefinisikan
    );
  }
}
