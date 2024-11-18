import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:handcar_ventor/core/extension/theme_extension.dart';
import 'package:handcar_ventor/core/utils/image_picker_provider.dart';
import 'package:handcar_ventor/core/widgets/button_widget.dart';
import 'package:handcar_ventor/core/widgets/outline_button_widget.dart';
import 'package:handcar_ventor/features/services/view/widgets/image_upload_button_widget.dart';
import 'package:handcar_ventor/features/services/view/widgets/price_field_widget.dart';
import 'package:handcar_ventor/features/services/view/widgets/text_label_widget.dart';
import 'package:handcar_ventor/features/services/view/widgets/textfield_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
// Make sure to import the OutlineToggleButton file here

class AddServiceScreen extends HookConsumerWidget {
  static const route = "/add-service";
  const AddServiceScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final image = ref.watch(imagePickerProviderProvider);
    final selectedImages = image.selectedImages;
    final nameController = useTextEditingController();
    final categoryController = useTextEditingController();
    final descriptionController = useTextEditingController();
    final priceController = useTextEditingController();
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
            TextFieldWidget(
              controller: nameController,
              hintText: 'Service Name',
            ),
            SizedBox(height: context.space.space_100),
            const TextLabel(label: "Service Category"),
            SizedBox(height: context.space.space_150),
            TextFieldWidget(
              controller: categoryController,
              hintText: 'Enter Service Category',
            ),
            SizedBox(height: context.space.space_200),
            const TextLabel(label: "Service Description"),
            SizedBox(height: context.space.space_150),
            TextFieldWidget(
              controller: descriptionController,
              hintText: 'Enter Service Description',
              isLarge: true,
            ),
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
                  PriceField(
              controller: priceController,
            ),
            SizedBox(height: context.space.space_200),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OutlineButtonWidget(
                    label: 'Cancel',
                    onTap: () {
                      Navigator.pop(context);
                    }),
                ButtonWidget(
                    label: 'Save',
                    onTap: () {
                      // Add save functionality here
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
