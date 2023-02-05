import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import 'package:firebase_auth/firebase_auth.dart';


class BrandLogo extends StatefulWidget {
  const BrandLogo({
    Key? key,
  }) : super(key: key);

  @override
  State<BrandLogo> createState() => _BrandLogoState();
}

class _BrandLogoState extends State<BrandLogo> {
  final auth = FirebaseAuth.instance;


  @override
  Widget build(BuildContext context) {
    var currentUser = auth.currentUser;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: const TextSpan(
                  text: 'Zeytuun',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                    color: AppColors.primary,
                  ),
                  children: [
                    TextSpan(
                      text: '🍔',
                      style: TextStyle(
                        color: AppColors.secondary,
                      ),
                    )
                  ],
                ),
              ),
              const Text(
                'delius food',
                style: TextStyle(
                  fontSize: 14,
                  color: AppColors.grey,
                ),
              ),
            ],
          ),

          // Text("User", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)
          Text(currentUser?.email??"", style: TextStyle(fontSize: 20),),
        ],
      ),
    );
  }
}
