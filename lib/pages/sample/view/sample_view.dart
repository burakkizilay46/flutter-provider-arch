import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_arch/pages/sample/provider/sample_provider.dart';

class SampleView extends StatelessWidget {
  const SampleView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<SampleProvider>(
      create: (context) => SampleProvider(),
      child: Scaffold(
        appBar: AppBar(title: Text('Sample View')),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(context.watch<SampleProvider>().myText),
            ElevatedButton(onPressed: () => context.read<SampleProvider>().changeText(), child: Text('change string')),
            ElevatedButton(onPressed: () => context.read<SampleProvider>().resetText(), child: Text('reset string')),
          ],
        )),
      ),
    );
  }
}
