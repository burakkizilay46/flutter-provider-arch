import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_arch/pages/sample/provider/sample_provider.dart';
import 'package:provider_arch/pages/sample/view/sample_view.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<SampleProvider>(create: (context) => SampleProvider()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const SampleView(),
    );
  }
}
