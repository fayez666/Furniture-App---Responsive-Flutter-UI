import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/Product.dart';
import '../../../size_config.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  final Product product;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize!;

    return Container(
      constraints: BoxConstraints(maxHeight: defaultSize * 44),
      padding: EdgeInsets.only(
        top: defaultSize * 9,
        right: defaultSize * 2,
        left: defaultSize * 2,
      ),
      // height: 500,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(defaultSize * 2),
            topRight: Radius.circular(defaultSize * 2),
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            product.subTitle!,
            style: TextStyle(
              fontSize: defaultSize * 1.8,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: defaultSize * 3,
          ),
          Text(
            product.description!,
            style: TextStyle(color: kTextColor.withOpacity(0.7), height: 1.5),
          ),
          SizedBox(
            height: defaultSize * 3,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  textStyle: TextStyle(
                    fontSize: defaultSize * 1.6,
                  ),
                  primary: kPrimaryColor,
                  padding: EdgeInsets.all(defaultSize * 1.5),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
              onPressed: press,
              child: Text(
                "Add to cart".toUpperCase(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: defaultSize * 1.6,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
