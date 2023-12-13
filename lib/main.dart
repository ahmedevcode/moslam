import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:moslam/core/theme.dart';
import 'package:moslam/home/home.dart';
import 'package:moslam/provider/AppConfigProvider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
void main() {
  runApp(ChangeNotifierProvider(
      create: (buildContext) {
        return AppconfigProvider();
      },
      child: MainApplication()));
}

class MainApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var provider = Provider.of<AppconfigProvider>(context);
    return GetMaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: [
        const Locale('en'),
        const Locale('ar'),

      ],locale:Locale('ar'),


      title: 'islamy',
      theme: Mythemedata.lighttheme,
      themeMode: provider.Apptheme,
      darkTheme: Mythemedata.darktheme,
      home: homescreen(),
      debugShowCheckedModeBanner: false,

    );
  }
}
