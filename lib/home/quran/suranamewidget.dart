import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moslam/home/quran/quran_body.dart';

class quran_name extends StatelessWidget {
  late String suraname;
  late int index;

  quran_name(this.suraname, this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
    Get.to(quran_body(),
            arguments: suradetailarg(suraname, index));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          suraname,
          textAlign: TextAlign.center,
          style: Theme.of(context).primaryTextTheme.headline4,
        ),
      ),
    );
  }
}
