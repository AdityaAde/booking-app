import 'package:booking_app/config/theme/app_dimen.dart';
import 'package:booking_app/config/theme/app_font.dart';
import 'package:flutter/material.dart';

class AppInputText extends StatefulWidget {
  const AppInputText({
    super.key,
    this.controller,
    required this.label,
  });
  final TextEditingController? controller;
  final String label;

  @override
  State<AppInputText> createState() => _AppInputTextState();
}

class _AppInputTextState extends State<AppInputText> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDimen.h40,
      child: TextFormField(
        controller: widget.controller,
        decoration: InputDecoration(
            hintText: widget.label,
            hintStyle: AppFont.componentMedium,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            contentPadding: EdgeInsets.symmetric(horizontal: AppDimen.w16)),
      ),
    );
  }
}
