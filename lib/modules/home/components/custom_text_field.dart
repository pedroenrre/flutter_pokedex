import 'package:flutter/material.dart';
import 'package:pokedex/resources/app_text_styles.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hint;
  final Widget? prefix;
  final Widget? suffix;
  final bool obscure;
  final TextInputType? textInputType;
  final Function(String) onChanged;
  final bool? enabled;

  const CustomTextField({
    Key? key,
    required this.onChanged,
    this.hint,
    this.prefix,
    this.suffix,
    this.obscure = false,
    this.textInputType,
    this.enabled,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: textInputType,
      onChanged: onChanged,
      enabled: enabled,
      decoration: InputDecoration(
        label: Text(hint ?? ""),
        suffixIcon: suffix,
      ),
      style: getGreyStyle(),
      textAlignVertical: TextAlignVertical.center,
    );
  }
}
