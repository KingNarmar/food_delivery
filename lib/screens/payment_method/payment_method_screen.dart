import 'package:flutter/material.dart';
import 'package:food_delivery/componants/app_bar_backword_icon.dart';
import 'package:food_delivery/componants/custom_button.dart';
import 'package:food_delivery/componants/custom_container.dart';
import 'package:food_delivery/utl/assets.dart';

class PaymentMethodScreen extends StatelessWidget {
  const PaymentMethodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppBarBackWordIcon(
                  padding: const EdgeInsets.only(left: 5),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    'Payment Method',
                    style: TextStyle(
                      color: Color(0xFF09041B),
                      fontSize: 25,
                      fontFamily: 'BentonSans Bold',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: SizedBox(
                    width: 239,
                    height: 44,
                    child: Text(
                      'This data will be displayed in your account profile for security',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'BentonSans Book',
                          fontWeight: FontWeight.w400,
                          height: 2),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomContainer(
                  child: Image(
                    image: AssetImage(
                      Assets.payPalPic,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomContainer(
                  child: Image(
                    image: AssetImage(
                      Assets.visaPic,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomContainer(
                  child: Image(
                    image: AssetImage(
                      Assets.payoneerPic,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 219,
                ),
                Center(
                  child: CustomButton(
                    text: "Next",
                    onTap: () {
                      Navigator.pushNamed(context, "uploadPhoto");
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
