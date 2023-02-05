import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  const CategoryButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      margin: const EdgeInsets.only(left: 18, right: 18, bottom: 32),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
           ElevatedButton(
            onPressed: () {},
            child: const Text('All'),
          ),
          const SizedBox(
            width: 16,
          ),
          OutlinedButton(
            onPressed: () {},
            child: const Text('Breakfast'),
          ),
          const SizedBox(
            width: 16,
          ),
          OutlinedButton(
            onPressed: () {},
            child: const Text('lunch'),
          ),
          const SizedBox(
            width: 16,
          ),
          OutlinedButton(
            onPressed: () {},
            child: const Text('Dinner'),
          ),
          // const SizedBox(
          //   width: 16,
          // ),
          // OutlinedButton(
          //   onPressed: () {},
          //   child: const Text('Chinese'),
          // ),
        ],
      ),
    );
  }
}
