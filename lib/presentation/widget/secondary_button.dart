import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../config/theme/theme.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton(
      {Key? key,
      this.type = SecondaryType.type3,
      required this.onPressed,
      required this.text,
      this.width = 78})
      : super(key: key);
  final SecondaryType type;
  final VoidCallback? onPressed;
  final String text;
  final double width;

  @override
  Widget build(BuildContext context) {
    return type == SecondaryType.type1
        ? _type1()
        : type == SecondaryType.type2
            ? _type2()
            : _type3();
  }

  Widget _type1() {
    return SizedBox(
      height: 24.h,
      width: width.w,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: AppColor.ink01),
          backgroundColor: AppColor.ink06,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        child: Text(
          text,
          style: AppFont.componentSmall,
        ),
      ),
    );
  }

  Widget _type2() {
    return SizedBox(
      height: 32.h,
      width: width.w,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: AppColor.ink01),
          backgroundColor: AppColor.ink06,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        child: Text(
          text,
          style: AppFont.componentMediumBold,
        ),
      ),
    );
  }

  Widget _type3() {
    return SizedBox(
      height: 57.h,
      width: width.w,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: AppColor.ink01),
          backgroundColor: AppColor.ink06,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        child: Text(
          text,
          style: AppFont.componentLarge,
        ),
      ),
    );
  }
}

enum SecondaryType { type1, type2, type3 }
