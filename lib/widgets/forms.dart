import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class CustomFormField extends StatelessWidget {
  final String title;
  final String hint;
  final String iconUrl;
  final bool obscureText;
  final TextEditingController? controller;

  const CustomFormField({
    Key? key,
    required this.title,
    required this.hint,
    required this.iconUrl,
    this.obscureText = false,
    this.controller,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Container(
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: backgroundColor2,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Row(
                children: [
                  Image.asset(
                    iconUrl,
                    width: 17,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: TextFormField(
                      controller: controller,
                      style: primaryTextStyle,
                      obscureText: obscureText,
                      decoration: InputDecoration.collapsed(
                        hintText: hint,
                        hintStyle: subtitleTextStyle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
