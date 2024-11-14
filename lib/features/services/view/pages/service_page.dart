import 'dart:io';

import 'package:flutter/material.dart';
import 'package:handcar_ventor/core/extension/theme_extension.dart';
import 'package:handcar_ventor/core/utils/image_picker_provider.dart';
import 'package:handcar_ventor/features/dashboard/view/pages/service_page.dart';
import 'package:handcar_ventor/features/services/view/widgets/image_upload_button_widget.dart';
import 'package:handcar_ventor/features/services/view/widgets/text_label_widget.dart';
import 'package:handcar_ventor/features/services/view/widgets/textfield_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AddServiceScreen extends HookConsumerWidget {
  const AddServiceScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final image = ref.watch(imagePickerProviderProvider);
    final selectedImages = image.selectedImages;
    // final isEditing = useState(false);

    return Scaffold(
      backgroundColor: const Color(0xffF5F6F9),
      appBar: AppBar(
        backgroundColor: const Color(0xffF5F6F9),
        title: const Text('Add Service'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: context.space.space_200),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: context.space.space_200),
            const TextLabel(label: "Name Of Service"),
            SizedBox(height: context.space.space_200),
            const TextFieldWidget(hintText: 'Service Name'),
            SizedBox(height: context.space.space_100),
            const TextLabel(label: "Service Category"),
            SizedBox(height: context.space.space_150),
            const TextFieldWidget(hintText: 'Enter Service Category'),
            SizedBox(height: context.space.space_200),
            const TextLabel(label: "Service Description"),
            SizedBox(height: context.space.space_150),
            const TextFieldWidget(hintText: 'Enter Service Description', isLarge: true),
            SizedBox(height: context.space.space_200),
            const TextLabel(label: "Service Image"),
            SizedBox(height: context.space.space_150),
            Row(
              children: [
                const ImageUploadButton(),
                if (selectedImages.isNotEmpty)
                  SizedBox(width: context.space.space_100),
                if (selectedImages.isNotEmpty)
                  Expanded(
                    child: SizedBox(
                      height: context.space.space_200 * 4,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: selectedImages.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding:
                                EdgeInsets.only(right: context.space.space_50),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  context.space.space_100),
                              child: Image.file(
                                File(selectedImages[index].path),
                                fit: BoxFit.cover,
                                width: context.space.space_200 * 3,
                                height: context.space.space_200 * 3,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
              ],
            ),
            SizedBox(height: context.space.space_200),
            const TextLabel(label: "Price"),
            SizedBox(height: context.space.space_150),
            const PriceField(),
          ],
        ),
      ),
    );
  }

  

  

 }



