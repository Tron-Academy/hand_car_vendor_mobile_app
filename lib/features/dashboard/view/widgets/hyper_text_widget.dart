// hypertext_hooks.dart
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'dart:math';
import 'dart:async';

class HyperText extends HookWidget {
  final String text;
  final Duration duration;
  final TextStyle? textStyle;
  final bool animationTrigger;
  final bool animateOnLoad;

  const HyperText({
    super.key,
    required this.text,
    this.duration = const Duration(milliseconds: 800),
    this.textStyle,
    this.animationTrigger = false,
    this.animateOnLoad = true,
  });

  @override
  Widget build(BuildContext context) {
    final displayText = useState<List<String>>(text.split(''));
    final iterations = useState<double>(0);
    final isFirstRender = useState<bool>(true);
    final random = useMemoized(() => Random());
    final animationCount = useState<int>(0);
    final timer = useRef<Timer?>(null);

    // Custom hook for animation logic
    void startAnimation() {
      iterations.value = 0;
      timer.value?.cancel();
      animationCount.value++;
      final currentAnimationCount = animationCount.value;

      timer.value = Timer.periodic(
        duration ~/ (text.length * 10),
        (timer) {
          if (!animateOnLoad && isFirstRender.value) {
            timer.cancel();
            isFirstRender.value = false;
            return;
          }

          if (iterations.value < text.length &&
              currentAnimationCount == animationCount.value) {
            displayText.value = List.generate(
              text.length,
              (i) => text[i] == ' '
                  ? ' '
                  : i <= iterations.value
                      ? text[i]
                      : String.fromCharCode(random.nextInt(26) + 65),
            );
            iterations.value += 0.1;
          } else {
            timer.cancel();
            if (currentAnimationCount == animationCount.value) {
              displayText.value = text.split('');
            }
          }
        },
      );
    }

    // Effect for initial animation
    useEffect(() {
      if (animateOnLoad) {
        startAnimation();
      }
      return () => timer.value?.cancel();
    }, []);

    // Effect for animation trigger
    useEffect(() {
      if (animationTrigger) {
        startAnimation();
      }
      return null;
    }, [animationTrigger]);

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(displayText.value.length, (index) {
          return AnimatedSwitcher(
            duration: const Duration(milliseconds: 50),
            child: Text(
              displayText.value[index].toUpperCase(),
              key: ValueKey<String>('${animationCount.value}-$index'),
              style: textStyle ?? Theme.of(context).textTheme.titleLarge,
            ),
          );
        }),
      ),
    );
  }
}

