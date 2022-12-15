import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/screens/home/components/body.dart';
import 'package:furniture_app/size_config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBAr(),
      body: const Body(),
    );
  }

  AppBar buildAppBAr() {
    return AppBar(
      leading: IconButton(
        icon: SvgPicture.asset(
          "assets/icons/menu.svg",
          height: SizeConfig.defaultSize! * 2,
        ),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/scan.svg",
            height: SizeConfig.defaultSize! * 2.4,
          ),
          onPressed: () {},
        ),
        const Center(
          child: Text(
            "Scan",
            style: TextStyle(color: kTextColor, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          width: SizeConfig.defaultSize,
        )
      ],
    );
  }
}
