import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moslam/home/hades/hades_body.dart';

import 'hades_tab.dart';

class hades_name extends StatelessWidget {
  hadesitem item;

  hades_name(this.item);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
      Get.to(hades_body(),arguments: item);
      },
      child: Container(
        padding: EdgeInsets.all(8),
        child: Text(
          item.title,
          style: Theme.of(context).primaryTextTheme.headline4,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
