// ignore_for_file: invalid_use_of_protected_member

import 'package:tailor/src/features/exchange_receipt/presentation/pages/add_new_exchange_sheet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ToggleOptionWidget extends StatefulWidget {
  const ToggleOptionWidget(
      {super.key,
      required this.options,
      required this.icons,
      required this.onOptionSelected,
      this.initialIndex = 0,
      this.selectedColor = Colors.blue,
      this.unselectedColor = Colors.grey,
      this.selectedTextColor = Colors.white,
      this.unselectedTextColor = Colors.black,
      required this.enable});

  final List<String> options; // List of text options
  final List<IconData> icons; // Corresponding icons for options
  final int initialIndex; // Default selected index
  final Color selectedColor; // Color for the selected option
  final Color unselectedColor; // Color for unselected options
  final Color selectedTextColor; // Text color for selected option
  final Color unselectedTextColor; // Text color for unselected option
  final ValueChanged<int> onOptionSelected; // Callback for option selection
  final bool enable;
  @override
  State<ToggleOptionWidget> createState() => _ToggleOptionWidgetState();
}

class _ToggleOptionWidgetState extends State<ToggleOptionWidget> {
  int selectedIndex = 1;

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.initialIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(widget.options.length, (index) {
        final isSelected = selectedIndex == index;
        return GestureDetector(
          onTap: () {
            if (widget.enable) {
              setState(() {
                selectedIndex = index;
              });
              widget.onOptionSelected(index);
            }
          },
          child: AnimatedContainer(
            width: context.width / 2 - 20,
            height: 50,
            duration: const Duration(milliseconds: 200),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            margin: const EdgeInsets.symmetric(horizontal: 6),
            decoration: BoxDecoration(
              color: isSelected ? widget.selectedColor : widget.unselectedColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              textDirection: TextDirection.rtl,
              children: [
                Icon(
                  widget.icons[index],
                  color: isSelected
                      ? widget.selectedTextColor
                      : widget.unselectedTextColor,
                  size: 20,
                ),
                const SizedBox(width: 8),
                Text(
                  widget.options[index],
                  style: TextStyle(
                    color: isSelected
                        ? widget.selectedTextColor
                        : widget.unselectedTextColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
