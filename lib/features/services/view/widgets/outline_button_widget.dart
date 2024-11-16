import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:handcar_ventor/core/extension/theme_extension.dart';

class OutlineToggleButton extends HookWidget {
  final String label;
  final IconData outlineIcon;
  final IconData filledIcon;
  final Color outlineColor;
  final VoidCallback onTap;

  const OutlineToggleButton({
    super.key,
    required this.label,
    required this.outlineIcon,
    required this.filledIcon,
    required this.outlineColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final isOutline = useState(true);

    return InkWell(
      onTap: () {
        isOutline.value = !isOutline.value;
        onTap();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: isOutline.value ? null : outlineColor,
          border: isOutline.value ? Border.all(color: outlineColor) : null,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              isOutline.value ? outlineIcon : filledIcon,
              color: isOutline.value ? outlineColor : Colors.white,
            ),
            SizedBox(width: context.space.space_100),
            Text(
              label,
              style: context.typography.bodyMedium.copyWith(
                color: isOutline.value ? outlineColor : Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
