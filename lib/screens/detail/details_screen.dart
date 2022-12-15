import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/screens/detail/components/body.dart';
import 'package:furniture_app/size_config.dart';

import '../../models/Product.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kSecondaryColor,
      appBar: buildAppBar(context),
      body:  Body(product: product,),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/arrow-long-left.svg"),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset("assets/icons/bag.svg"),
          onPressed: () {},
        ),
        SizedBox(
          width: SizeConfig.defaultSize,
        )
      ],
    );
  }
}
