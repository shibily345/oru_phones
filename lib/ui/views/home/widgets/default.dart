import 'package:flutter/material.dart';

// 📌 1. ShowText Widget (Localized Text Display)
class ShowText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final int? maxLines;
  final TextAlign? textAlign;

  const ShowText({
    Key? key,
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.color,
    this.textAlign,
    this.maxLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      maxLines: maxLines ?? 1,
      text, // Use localized text
      style: TextStyle(
        fontSize: fontSize ?? Theme.of(context).textTheme.bodyMedium?.fontSize,
        fontWeight: fontWeight ?? FontWeight.normal,
        color: color ?? Theme.of(context).textTheme.bodyMedium?.color,
      ),
      textAlign: textAlign ?? TextAlign.left,
    );
  }
}

// 📌 2. Custom Button Widget (Localized Button)
class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;
  final Color? color;
  final Color? textColor;
  final double borderRadius;

  const CustomButton({
    Key? key,
    required this.title,
    this.onPressed,
    this.color,
    this.textColor,
    this.borderRadius = 8.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color ?? Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius)),
        minimumSize: const Size(double.infinity, 50),
      ),
      onPressed: onPressed ?? () {},
      child: Text(
        title, // Use localized text
        style: TextStyle(
            color: textColor ??
                Theme.of(context).primaryTextTheme.labelLarge?.color),
      ),
    );
  }
}

// 📌 3. Custom TextFormField (Localized Input Field)
class CustomTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String label;
  final String hintText;
  final TextInputType keyboardType;
  final bool obscureText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final VoidCallback? suffixAction;

  const CustomTextFormField({
    Key? key,
    required this.label,
    required this.hintText,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.prefixIcon,
    this.suffixIcon,
    this.suffixAction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,
            style: Theme.of(context).textTheme.labelMedium), // Localized label
        const SizedBox(height: 5),
        TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          obscureText: obscureText,
          decoration: InputDecoration(
            hintText: hintText, // Localized hint text
            prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
            suffixIcon: suffixIcon != null
                ? IconButton(
                    icon: Icon(suffixIcon), onPressed: suffixAction ?? () {})
                : null,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
          ),
        ),
      ],
    );
  }
}

// 📌 4. Custom Container (Localized Content Container)
class CustomContainer extends StatelessWidget {
  final Widget child;
  final double padding;
  final double borderRadius;
  final Color? color;
  final Color? borderColor;
  final List<BoxShadow>? boxShadow;

  const CustomContainer({
    Key? key,
    required this.child,
    this.padding = 12.0,
    this.borderRadius = 10.0,
    this.color,
    this.borderColor,
    this.boxShadow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: color ?? Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(color: borderColor ?? Colors.transparent),
        boxShadow: boxShadow ??
            [
              const BoxShadow(
                  color: Colors.black12, blurRadius: 5, spreadRadius: 2)
            ],
      ),
      child: child,
    );
  }
}

// 📌 5. Custom RichText (Localized Styled TextSpan)
class CustomRichText extends StatelessWidget {
  final String firstText;
  final String secondText;
  final Color? firstColor;
  final Color? secondColor;
  final double? fontSize;
  final FontWeight? fontWeight;

  const CustomRichText({
    Key? key,
    required this.firstText,
    required this.secondText,
    this.firstColor,
    this.secondColor,
    this.fontSize,
    this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(
            fontSize:
                fontSize ?? Theme.of(context).textTheme.bodyMedium?.fontSize),
        children: [
          TextSpan(
              text: firstText,
              style: TextStyle(
                  color: firstColor ??
                      Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.color)), // Localized text
          TextSpan(
              text: secondText,
              style: TextStyle(
                  color: secondColor ?? Theme.of(context).primaryColor,
                  fontWeight: fontWeight ?? FontWeight.bold)), // Localized text
        ],
      ),
    );
  }
}

// 📌 6. Custom Divider (Localized Section Separation)
class CustomDivider extends StatelessWidget {
  final double thickness;
  final Color? color;

  const CustomDivider({Key? key, this.thickness = 1.0, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
        thickness: thickness, color: color ?? Theme.of(context).dividerColor);
  }
}
