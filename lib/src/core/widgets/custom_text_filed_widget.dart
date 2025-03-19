import '../constants/spaces_sizes.dart';
import '../extensions/context_extensions.dart';
import 'package:flutter/material.dart';

// class CustomTextFieldWidget extends StatelessWidget {
//   CustomTextFieldWidget({
//     super.key,
//     required this.controller,
//     this.label = '',
//     this.isNumber = false,
//     this.hint = '',
//     this.validator,
//     this.raduis = 10,
//   });
//   final TextEditingController controller;
//   final String label;
//   final bool isNumber;
//   final String hint;
//   final String? Function(String?)? validator;
//   double raduis;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.end,
//       children: [
//         if (label.isNotEmpty)
//           Text(
//             label,
//             style: context.bodyLarge,
//           ),
//         if (label.isNotEmpty) Gaps.g8,
//         Directionality(
//           textDirection: TextDirection.rtl,
//           child: TextFormField(
//             controller: controller,
//             keyboardType: isNumber ? TextInputType.number : TextInputType.name,
//             textAlign: TextAlign.right,
//             textDirection: isNumber ? TextDirection.ltr : TextDirection.rtl,
//             style: context.titleMedium,
//             validator: validator,
//             decoration: InputDecoration(
//               fillColor: context.whiteColor,
//               hintStyle: context.bodySmall.copyWith(
//                 fontWeight: FontWeight.normal,
//               ),
//               hintText: hint,
//               filled: true,
//               floatingLabelAlignment: FloatingLabelAlignment.center,
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(raduis),
//                 borderSide: BorderSide(
//                   color: Colors.transparent,
//                 ),
//               ),
//               contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
//               enabledBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(raduis),
//                 borderSide: BorderSide(
//                   color: Colors.transparent,
//                 ),
//               ),
//               focusedBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(raduis),
//                 borderSide: BorderSide(
//                   color: context.primary,
//                 ),
//               ),
//               focusedErrorBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(raduis),
//                 borderSide: BorderSide(
//                   color: Colors.red,
//                 ),
//               ),
//               errorBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(raduis),
//                 borderSide: BorderSide(
//                   color: Colors.transparent,
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({
    super.key,
    required this.controller,
    this.label = '',
    this.fillColor = Colors.white,
    this.hint = '',
    this.validator,
    this.radius = 10,
    this.isNumber = false,
    this.isPassword = false,
    this.prefixIcon,
    this.suffixIcon,
    this.textAlign = TextAlign.right,
    this.textDirection,
    this.maxLines = 1,
    this.minLines,
    this.readOnly = false,
    this.onTap,
    this.onChanged,
    this.focusNode,
  });

  final TextEditingController controller;
  final String label;
  final String hint;
  final String? Function(String?)? validator;
  final double radius;
  final bool isNumber;
  final bool isPassword;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextAlign textAlign;
  final TextDirection? textDirection;
  final int maxLines;
  final int? minLines;
  final bool readOnly;
  final VoidCallback? onTap;
  final ValueChanged<String>? onChanged;
  final FocusNode? focusNode;
  final Color? fillColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label.isNotEmpty)
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 6.0),
              child: Text(
                label,
                style: context.bodyLarge,
              ),
            ),
          ),
        TextFormField(
          controller: controller,
          keyboardType: isNumber ? TextInputType.number : TextInputType.text,
          obscureText: isPassword,
          textAlign: textAlign,
          textDirection: textDirection ??
              (isNumber ? TextDirection.ltr : TextDirection.rtl),
          style: context.bodyLarge.copyWith(color: context.blackColor),
          validator: validator,
          maxLines: maxLines,
          minLines: minLines,
          readOnly: readOnly,
          onTap: onTap,
          onChanged: onChanged,
          focusNode: focusNode,
          decoration: InputDecoration(
            hintText: hint,
            filled: true,
            fillColor: fillColor,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            hintStyle: context.bodySmall,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(radius),
              borderSide: BorderSide.none,
            ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(radius),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(radius),
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(radius),
              borderSide: const BorderSide(
                color: Colors.red,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(radius),
              borderSide: const BorderSide(
                color: Colors.red,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ExchangeCustomTextFiled extends StatelessWidget {
  const ExchangeCustomTextFiled(
      {super.key,
      required this.controller,
      this.label = '',
      this.isNumber = false,
      this.hint = '',
      this.validator});
  final TextEditingController controller;
  final String label;
  final bool isNumber;
  final String hint;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        if (label.isNotEmpty)
          Text(
            label,
            style: context.bodyLarge,
          ),
        if (label.isNotEmpty) Gaps.g8,
        SizedBox(
          // height: 55,
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: TextFormField(
              controller: controller,
              keyboardType:
                  isNumber ? TextInputType.number : TextInputType.name,
              textAlign: TextAlign.right,
              textDirection: isNumber ? TextDirection.ltr : TextDirection.rtl,
              style: context.bodyLarge,
              validator: validator,
              decoration: InputDecoration(
                fillColor: context.whiteColor,
                hintStyle: context.bodySmall.copyWith(
                  fontWeight: FontWeight.normal,
                ),
                hintText: hint,
                filled: true,
                floatingLabelAlignment: FloatingLabelAlignment.center,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
