 import 'package:flutter/material.dart';
import 'package:handcar_ventor/core/extension/theme_extension.dart';
import 'package:handcar_ventor/core/utils/image_picker_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ImageUploadButton extends ConsumerWidget {
  const ImageUploadButton({super.key});

  @override
  Widget build(BuildContext context,ref) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(context.space.space_100),
        color: Colors.white,
      ),
      child: IconButton(
        onPressed: () {
          ref.read(imagePickerProviderProvider.notifier).pickImages();
        },
        icon: const Icon(Icons.add_a_photo_outlined),
      ),
    );
  }
}