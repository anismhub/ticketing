import 'package:flutter/material.dart';

class CustomDropdownButtonFormField extends StatelessWidget {
  final Widget? icon;
  final String? value;
  final List<DropdownMenuItem<String>>? items;
  final String? Function(dynamic)? validator;
  final String? labelText;
  final EdgeInsetsGeometry? padding;
  final TextStyle? labelTextStyle;
  final InputBorder? border;
  final TextStyle? style;
  final ValueChanged<String?>? onChanged;
  const CustomDropdownButtonFormField(
      {Key? key,
      this.value,
      this.items,
      this.validator,
      this.labelText,
      this.padding,
      this.labelTextStyle,
      this.border,
      this.icon,
      this.onChanged,
      this.style})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ??
          const EdgeInsets.symmetric(
            horizontal: 0,
          ),
      child: DropdownButtonFormField<String>(
        icon: icon,
        style: style,
        decoration: InputDecoration(
          labelText: labelText,
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 1.0),
              borderRadius: BorderRadius.all(Radius.circular(20))),
        ),
        validator: validator,
        value: value,
        onChanged: onChanged,
        onSaved: (value) {},
        items: items,
      ),
    );
  }
}
