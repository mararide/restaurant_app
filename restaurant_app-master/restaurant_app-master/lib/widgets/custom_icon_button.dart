import 'package:flutter/material.dart';
import 'package:food_craft/constants/app_assets.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      margin: const EdgeInsets.only(
        left: 18,
        right: 18,
        bottom: 32,
      ),
      child: ElevatedButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppAssets.iconCart,
              width: 24,
            ),
            const SizedBox(
              width: 16,
            ),
            const Text(
              'Add To Cart',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
