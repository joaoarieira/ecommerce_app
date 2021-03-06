import 'package:ecommerce_app/models/product.dart';
import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final product = ModalRoute.of(context)?.settings.arguments as Product?;

    return Scaffold(
      appBar: AppBar(
        title: Text(product?.title ?? "Detalhes"),
      ),
    );
  }
}
