import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:handcar_ventor/core/extension/theme_extension.dart';
import 'package:handcar_ventor/features/dashboard/view/widgets/hyper_text_widget.dart';

class DrawerWidget extends HookWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useAnimationController(
      duration: const Duration(milliseconds: 300),
    );
    final isMenuOpened = useState(false);

    void toggleMenu() {
      isMenuOpened.value = !isMenuOpened.value;
      isMenuOpened.value ? controller.forward() : controller.reverse();
    }

    final triggerAnimation = useState(false);
    final resetTimer = useRef<Timer?>(null);

    void handleAnimationTrigger() {
      triggerAnimation.value = true;

      // Cancel any existing timer
      resetTimer.value?.cancel();

      // Set a new timer to reset the trigger after 300ms
      resetTimer.value = Timer(const Duration(milliseconds: 300), () {
        triggerAnimation.value = false;
      });
    }

    // Cleanup timer on dispose
    useEffect(() {
      return () => resetTimer.value?.cancel();
    }, []);

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: context.colors.primary,
            ),
            child: Center(
              child: HyperText(
                text: "Muhammed Risan",
                textStyle: context.typography.bodyLarge
                    .copyWith(color: context.colors.white),
                animateOnLoad: true,
                duration: const Duration(milliseconds: 300),
                animationTrigger: triggerAnimation.value,
              ),
            ),
          ),
          ListTile(
            leading: AnimatedIcon(
              icon: AnimatedIcons.home_menu,
              color: context.colors.primary,
              progress: controller,
            ),
            title: HyperText(
              text: "Home",
              textStyle: context.typography.bodyLarge
                  .copyWith(color: context.colors.primary),
              animateOnLoad: true,
              duration: const Duration(milliseconds: 300),
              animationTrigger: triggerAnimation.value,
            ),
            onTap: () {
              toggleMenu();
              handleAnimationTrigger();
            },
          ),
        ],
      ),
    );
  }
}
