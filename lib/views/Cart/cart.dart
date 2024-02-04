import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/ReuseableWidgets/CustomContiner.dart';
import 'package:foodly/constants/constants.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(130.h),
          child: Container(
            height: 100,
          )),
      body: SafeArea(
          child:
              CustomContiner(currContent: const Center(child: Text("home")))),
    );
  }
}
