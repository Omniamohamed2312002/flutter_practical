import 'package:flutter/material.dart';
import 'package:flutter_practical/Model/shoe_model.dart';


class CardWidget extends StatelessWidget {
  final ShoeModel shoe;
  const CardWidget({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 5,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Expanded(
              child: Image.network(
                shoe.imageUrl,
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    shoe.name,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    shoe.color,
                    style: const TextStyle(color: Colors.grey),
                  ),
                  Text(
                    '\$ ${shoe.price}',
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
