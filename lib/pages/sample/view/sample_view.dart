import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_arch/core/base/view/base_view.dart';
import 'package:provider_arch/pages/sample/provider/sample_provider.dart';

class SampleView extends StatelessWidget {
  const SampleView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView(
      provider: SampleProvider(),
      onProviderReady: (provider) {
        provider.init();
        provider.setContext(context);
      },
      onPageBuilder: (SampleProvider provider) => Scaffold(
        appBar: AppBar(title: const Text('Sample View')),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(context.watch<SampleProvider>().myText),
            ElevatedButton(
                onPressed: () => context.read<SampleProvider>().changeText(), child: const Text('change string')),
            ElevatedButton(
                onPressed: () => context.read<SampleProvider>().resetText(), child: const Text('reset string')),
          ],
        )),
      ),
    );
  }
}
