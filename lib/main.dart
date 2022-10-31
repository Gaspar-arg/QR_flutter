import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_sqlite_maps/pages/pages.dart';
import 'package:qr_sqlite_maps/services/ui_provider.dart';

import 'themes/app_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => UiProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'QR Reader',
        initialRoute: 'home',
        routes: {
          'home': (context) => HomePage(),
          'maps': (context) => MapsPage()
        },
        theme: AppTheme.themeData,
      ),
    );
  }
}
