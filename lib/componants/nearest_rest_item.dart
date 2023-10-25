import 'package:flutter/material.dart';
import 'package:food_delivery/models/nearest_rest_model.dart';

import 'custom_container.dart';

class NearestRestItem extends StatelessWidget {
  const NearestRestItem({
    super.key,
    required this.model,
  });
  final NearestRestModel model;
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      height: MediaQuery.sizeOf(context).height * 0.226600985,
      width: MediaQuery.sizeOf(context).height * 0.181034483,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            model.image,
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.020935961,
          ),
          Text(
            model.title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'BentonSans Bold',
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.004926108,
          ),
          Opacity(
            opacity: 0.50,
            child: Text(
              model.subTitle,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 13,
                fontFamily: 'BentonSans Book',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
