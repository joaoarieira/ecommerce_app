import 'package:ecommerce_app/models/product.dart';
import 'package:ecommerce_app/pages/product_detail_page.dart';
import 'package:ecommerce_app/utils/app_routes.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final Product product;

  const ProductItem({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        footer: GridTileBar(
          title: Text(
            product.title,
            textAlign: TextAlign.center,
          ),
          trailing: Icon(
            Icons.shopping_cart,
            color: Theme.of(context).colorScheme.secondary,
          ),
          backgroundColor: Colors.black87,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite),
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        child: GestureDetector(
          // onTap: () {
          //   // uma outra forma de navegação
          //   Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
          //     return ProductDetailPage(product: product);
          //   }));
          // },
          onTap: () {
            Navigator.of(context).pushNamed(
              AppRoutes.PRODUCT_DETAIL,
              arguments: product,
            );
          },
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
