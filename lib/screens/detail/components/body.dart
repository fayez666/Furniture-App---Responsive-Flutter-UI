import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/models/Product.dart';
import 'package:furniture_app/screens/detail/components/product_descroption.dart';
import 'package:furniture_app/screens/detail/components/product_info.dart';

import '../../../size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize!;
    TextStyle lightTextStyle = TextStyle(color: kTextColor.withOpacity(0.6));
    return SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SizedBox(
          width: double.infinity,
          height: SizeConfig.orientation == Orientation.landscape
              ? SizeConfig.screenWidth
              : SizeConfig.screenHeight! - AppBar().preferredSize.height,
          child: Stack(
            children: [
              ProductInfo(
                product: product,
              ),
              Positioned(
                top: defaultSize * 37.5,
                left: 0,
                right: 0,
                child: ProductDescription(
                  product: product,
                  press: () {},
                ),
              ),
              Positioned(
                  top: defaultSize * 9.5,
                  right: -defaultSize * 7.5,
                  child: Image.network(
                    product.image!,
                    fit: BoxFit.cover,
                    height: defaultSize * 37.8,
                    width: defaultSize * 36.4,
                  ))
            ],
          ),
        ));
  }
}
