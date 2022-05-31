import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pakodex/Contants/contants.dart';
import 'package:pakodex/Contants/uiHelper.dart';

class AppTitle extends StatefulWidget {
  AppTitle({Key? key}) : super(key: key);

  @override
  State<AppTitle> createState() => _AppTitleState();
}

class _AppTitleState extends State<AppTitle> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Helper.titleHeight(),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, right: 20),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                width: Helper.imageHeight(),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/pokeball.png'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
            ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                Constants.title,
                style: Constants.titleStyle(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
