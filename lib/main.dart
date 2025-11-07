import 'package:flutter/material.dart';
import 'package:flutter_counter_i18n/home_page.dart';
import 'package:flutter_counter_i18n/l10n/app_localizations.dart';

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Counter I18N',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale('en'),
      home: const HomePage(),
    );
  }
}
