import 'package:flutter/material.dart';
import 'package:furniture_app/screens/detail/details_screen.dart';
import 'package:furniture_app/screens/home/components/product_card.dart';
import 'package:furniture_app/size_config.dart';

import '../../../models/Product.dart';

class RecommandProducts extends StatelessWidget {
  const RecommandProducts({
    Key? key,
    required this.products,
  }) : super(key: key);

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize!;

    return Padding(
      padding: EdgeInsets.all(defaultSize * 2),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount:
                SizeConfig.orientation == Orientation.portrait ? 2 : 4,
            childAspectRatio: 0.639,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20),
        itemBuilder: (context, index) => ProductCard(
          product: products[index],
          press: () {
            return Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return DetailsScreen(product: products[index]);
              },
            ));
          },
        ),
      ),
    );
  }
}
