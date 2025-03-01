// ignore_for_file: public_member_api_docs, sort_constructors_first

import '../../../../core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Divider(
        color: context.secondaryTextColor.withAlpha(50),
      ),
    );
  }
}
