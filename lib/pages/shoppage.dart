import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:wear_it/components/models/cart.dart';
import 'package:wear_it/components/models/shoe.dart';

import '../components/shoetile.dart';

class ShopPage extends StatefulWidget {
  ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);

    //alert the user the shoe added to cart
    showDialog(
      context: context,
      builder: (context) => AlertDialog(title: Text('Successfully added to the cart'),),
    );
  }

  // Color orange = Color.fromARGB(255, 251, 72, 18);
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Column(
              children: [
                Container(
                  padding: EdgeInsets.all(15.0),
                  margin: EdgeInsets.symmetric(horizontal: 25.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey[100]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 10.0),
                        child: const Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        'Search',
                        style: TextStyle(
                            color: Colors.deepOrange[400], fontSize: 16),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Every one flies.... some flies longer than others',
                  style: GoogleFonts.roboto(color: Colors.grey[600]),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Hot Picks🔥',
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      // SizedBox(
                      //   width: 5.0,
                      // ),
                      Text(
                        'see all',
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold, color: Colors.blue),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Expanded(
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          Shoe shoe = value.getShoeList()[index];
                          return ShoeTile(
                            onTap: ()=>addShoeToCart(shoe),
                            shoe: shoe,
                          );
                        })),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: Divider(
                    color: Colors.white,
                  ),
                )
              ],
            ));
  }
}
