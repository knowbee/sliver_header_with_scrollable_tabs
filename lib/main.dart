import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sliver_header/src/ui/sliver_with_tab/home_sliver_with_scrollable_tabs.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SliverHeader',
      home: HomeSliverWithTab(),
    );
  }
}
