import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly/constants/constants.dart';

class CustomContiner extends StatelessWidget {
  CustomContiner({super.key, required this.currContent});
  Widget currContent;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.80,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30.r),
            bottomRight: Radius.circular(30.r)),
        child: Container(
          width: width,
          color: kOffWhite,
          child: SingleChildScrollView(
            child: currContent,
          ),
        ),
      ),
    );
  }
}
