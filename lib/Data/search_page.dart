import 'package:flutter/material.dart';
import 'package:flutter_practical/Data/data.dart';
import 'package:flutter_practical/card_widget.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 40,
        ),
        TextFormField(
          decoration:  InputDecoration(
            suffixIcon: IconButton(onPressed: (){}, icon: const Icon(Icons.list),color: Colors.grey,),
            prefixIcon: const Icon(Icons.search,color: Colors.grey,),
            hintText: "Search by name",
            hintStyle: const TextStyle(
              color: Colors.grey
            ),
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          ),
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            padding: EdgeInsets.zero,
            itemCount: shoes.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 0.73,
            ),
            itemBuilder: (context, index) {
              return CardWidget(shoe: shoes[index]);
            },
          ),
        ))
      ],
    );
  }
}
