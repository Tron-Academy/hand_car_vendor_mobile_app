// typing_animation_hooks.dart
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'dart:async';

class TypingAnimation extends HookWidget {
  final String text;
  final Duration duration;
  final TextStyle? style;
  final bool animate;

  const TypingAnimation({
    super.key,
    required this.text,
    this.duration = const Duration(milliseconds: 100),
    this.style,
    this.animate = false,
  });

  @override
  Widget build(BuildContext context) {
    final displayedText = useState('');
    final charIndex = useState(0);
    final timer = useRef<Timer?>(null);

    // Custom hook for animation logic
    void stopAnimation() {
      timer.value?.cancel();
      timer.value = null;
    }
    void startAnimation() {
      charIndex.value = 0;
      displayedText.value = '';
      
      timer.value?.cancel();
      timer.value = Timer.periodic(duration, (timer) {
        if (charIndex.value < text.length) {
          displayedText.value = text.substring(0, charIndex.value + 1);
          charIndex.value++;
        } else {
          stopAnimation();
        }
      });
    }

    

    // Effect for handling animation state changes
    useEffect(() {
      if (animate) {
        startAnimation();
      } else {
        stopAnimation();
      }
      return () => timer.value?.cancel();
    }, [animate]);

    // Effect for cleaning up on dispose
    useEffect(() {
      return () => timer.value?.cancel();
    }, []);

    return Text(
      animate ? displayedText.value : text,
      style: style ??
          const TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
    );
  }
}

class TypingAnimationDemo extends HookWidget {
  const TypingAnimationDemo({super.key});

  @override
  Widget build(BuildContext context) {
    final animate = useState(false);

    void toggleAnimation() {
      animate.value = !animate.value;
    }

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TypingAnimation(
              text: "Typing Animation",
              animate: animate.value,
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: toggleAnimation,
              child: Text(animate.value ? 'Stop Animation' : 'Start Animation'),
            ),
          ],
        ),
      ),
    );
  }
}

// Optional: Custom hook for typing animation logic
// Hook<String> useTypingAnimation({
//   required String text,
//   required Duration duration,
//   required bool animate,
// }) {
//   return Hook.use(_UseTypingAnimationHook(
//     text: text,
//     duration: duration,
//     animate: animate,
//   ));
// }

// class _UseTypingAnimationHook extends Hook<String> {
//   final String text;
//   final Duration duration;
//   final bool animate;

//   const _UseTypingAnimationHook({
//     required this.text,
//     required this.duration,
//     required this.animate,
//   });

//   @override
//   _UseTypingAnimationHookState createState() => _UseTypingAnimationHookState();
// }

// class _UseTypingAnimationHookState
//     extends HookState<String, _UseTypingAnimationHook> {
//   late String _displayedText;
//   late int _charIndex;
//   Timer? _timer;

//   @override
//   void initHook() {
//     super.initHook();
//     _displayedText = '';
//     _charIndex = 0;
//   }

//   @override
//   String build(BuildContext context) {
//     useEffect(() {
//       if (hook.animate) {
//         _startAnimation();
//       } else {
//         _stopAnimation();
//       }
//       return _stopAnimation;
//     }, [hook.animate]);

//     return hook.animate ? _displayedText : hook.text;
//   }

//   void _startAnimation() {
//     _charIndex = 0;
//     _displayedText = '';
    
//     _timer?.cancel();
//     _timer = Timer.periodic(hook.duration, (timer) {
//       if (_charIndex < hook.text.length) {
//         setState(() {
//           _displayedText = hook.text.substring(0, _charIndex + 1);
//           _charIndex++;
//         });
//       } else {
//         _stopAnimation();
//       }
//     });
//   }

//   void _stopAnimation() {
//     _timer?.cancel();
//     _timer = null;
//   }

//   @override
//   void dispose() {
//     _stopAnimation();
//     super.dispose();
//   }
// }