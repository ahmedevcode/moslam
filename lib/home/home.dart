import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:moslam/home/hades/hades_tab.dart';
import 'package:moslam/home/sebha/sebha_body.dart';
import 'package:moslam/home/setting/setting_tab.dart';
import 'package:moslam/provider/AppConfigProvider.dart';

import 'package:provider/provider.dart';

import 'quran/quran_tab.dart';
import 'radio/RadioTab.dart';

class homescreen extends StatefulWidget {

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  int currentstate = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppconfigProvider>(context);
    return Stack(
      children: [
        Center(
            child: Image.asset(
              provider.isDark()
                  ? 'assets/images/imagedark.png'
                  : 'assets/images/bg3.png',
              fit: BoxFit.fill,
              width: double.infinity,
              height: double.infinity,
            )),
        Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context)!.app_title),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentstate,
            onTap: (index) {
              currentstate = index;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/quran.png')),
                label: AppLocalizations.of(context)!.quran,
              ),
              BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(
                    AssetImage('assets/images/quran-quran-svgrepo-com.png')),
                label: AppLocalizations.of(context)!.hadeth,
              ),
              BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/radio.png')),
                label: AppLocalizations.of(context)!.radio,
              ),
              BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/sebha_blue.png')),
                label: AppLocalizations.of(context)!.sebha,
              ),
              BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: Icon(Icons.settings),
                label: AppLocalizations.of(context)!.setting,
              ),
            ],
          ),
          body: Container(
            child: views[currentstate],
          ),
        ),
      ],
    );
  }
  List<Widget> views = [
    QuranTab(),
    HadesTab(),
    RadioTab(),
    shebha_body(),
    settingtab(),
  ];
}
