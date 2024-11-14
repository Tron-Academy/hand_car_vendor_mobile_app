import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:handcar_ventor/core/extension/theme_extension.dart';

class OutlineToggleButton extends HookWidget {
  final String label;
  final IconData outlineIcon;
  final IconData filledIcon;
  final VoidCallback onTap;

  const OutlineToggleButton({
    super.key,
    required this.label,
    required this.outlineIcon,
    required this.filledIcon,
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
        height: 50,
        width: 150,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: isOutline.value ? null : context.colors.primary,
          border: isOutline.value
              ? Border.all(color: context.colors.primary)
              : null,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              isOutline.value ? outlineIcon : filledIcon,
              color: isOutline.value ? context.colors.primary : Colors.white,
            ),
            const SizedBox(width: 10),
            Text(
              label,
              style: TextStyle(
                fontSize: 16,
                color: isOutline.value ? context.colors.primary : Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
