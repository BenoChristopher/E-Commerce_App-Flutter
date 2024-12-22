import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:wear_it/components/models/cart.dart';

import 'models/shoe.dart';

class CartItems extends StatefulWidget {
  Shoe shoe;
  CartItems({super.key, required this.shoe});

  @override
  State<CartItems> createState() => _CartItemsState();
}

class _CartItemsState extends State<CartItems> {
  removeItemFromCart() {
    Provider.of<Cart>(context, listen: false).removeItemCart(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.only(bottom: 15.0),
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(8)),
      child: ListTile(
        leading: Image.asset(widget.shoe.imagePath),
        title: Text(
          widget.shoe.name,
          style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
        ),
        subtitle: Text('\$${widget.shoe.price}'),
        trailing: IconButton(
          onPressed: removeItemFromCart,
          icon: Icon(Icons.delete),
        ),
      ),
    );
  }
}
