import 'package:flutter/material.dart';
import 'package:furniture_app/screens/home/components/recommand_products.dart';
import 'package:furniture_app/services/fetch_categories.dart';
import 'package:furniture_app/services/fetch_products.dart';
import 'package:furniture_app/size_config.dart';

import '../../../components/title_text.dart';
import 'categories.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize!;
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TitleText(
            title: "Browse by Categories",
          ),
          FutureBuilder(
            future: fetchCategories(),
            builder: (context, snapshot) => snapshot.hasData
                ? Categories(
                    categories: snapshot.data!,
                  )
                : Center(child: Image.asset("assets/ripple.gif")),
          ),
          const Divider(
            height: 5,
          ),
          const TitleText(title: "Recommands For You"),
          FutureBuilder(
              future: fetchProducts(),
              builder: (context, snapshot) {
                return snapshot.hasData
                    ? RecommandProducts(
                        products: snapshot.data!,
                      )
                    : Center(child: Image.asset("assets/ripple.gif"));
              })
        ],
      ),
    );
  }
}
