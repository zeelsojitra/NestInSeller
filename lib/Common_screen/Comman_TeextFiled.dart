import 'package:flutter/material.dart';

class Comman_TexxtFiled extends StatelessWidget {
  const Comman_TexxtFiled({
    Key? key,
    this.ontap,
    this.onChanged,
    this.maxLength,
    this.border,
    this.keyboardType,
    this.controller,
    this.hinttext,
    this.labletext,
    this.counter,
    this.fillcolor,
    this.prefixicon,
    this.sufficicon,
    this.filled,
    this.validator,
    this.hintStyle,
    this.maxLines,
    this.labelStyle,
  }) : super(key: key);
  final void Function()? ontap;
  final void Function(String)? onChanged;
  final maxLength;
  final InputBorder? border;
  final String? Function(String?)? validator;

  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final hinttext;
  final hintStyle;
  final labletext;
  final counter;
  final labelStyle;
  final maxLines;
  final fillcolor;
  final prefixicon;
  final Widget? sufficicon;
  final bool? filled;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      onTap: ontap,
      style: TextStyle(
        fontFamily: "JM1",
      ),
      keyboardType: keyboardType,
      controller: controller,
      maxLength: maxLength,
      maxLines: maxLines,
      onChanged: onChanged,
      decoration: InputDecoration(
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        border: border,
        hintText: hinttext,
        hintStyle: hintStyle,
        labelText: labletext,
        labelStyle: labelStyle,
        counter: counter,
        filled: filled,
        suffixIcon: sufficicon,
        prefixIcon: prefixicon,
        fillColor: fillcolor,
        counterText: "",
      ),
    );
  }
}
