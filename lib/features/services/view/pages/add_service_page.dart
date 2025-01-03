import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:handcar_ventor/core/extension/theme_extension.dart';
import 'package:handcar_ventor/core/utils/image_picker_provider.dart';
import 'package:handcar_ventor/core/widgets/button_widget.dart';
import 'package:handcar_ventor/core/widgets/outline_button_widget.dart';
import 'package:handcar_ventor/features/services/view/widgets/image_upload_button_widget.dart';
import 'package:handcar_ventor/features/services/view/widgets/price_field_widget.dart';
import 'package:handcar_ventor/features/services/view/widgets/text_label_widget.dart';
import 'package:handcar_ventor/features/services/view/widgets/textfield_widget.dart';
import 'package:handcar_ventor/features/services/view_model/service_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AddServiceScreen extends HookConsumerWidget {
  static const route = "/add-service";
  const AddServiceScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    // Form key for validation
    final formKey = useMemoized(() => GlobalKey<FormState>());

    // Image Picker
    final image = ref.watch(imagePickerProviderProvider);
    final selectedImages = image.selectedImages;

    // Controllers
    final nameController = useTextEditingController();
    final categoryController = useTextEditingController();
    final descriptionController = useTextEditingController();
    final priceController = useTextEditingController();

    // // Listen to service state changes
    // ref.listen<AsyncValue>(
    //   serviceControllerProvider,
    //   (previous, current) {
    //     current.whenOrNull(
    //       data: (_) {
    //         ScaffoldMessenger.of(context).showSnackBar(
    //           const SnackBar(content: Text('Service added successfully')),
    //         );
    //         Navigator.pop(context);
    //       },
    //       error: (error, stack) {
    //         ScaffoldMessenger.of(context).showSnackBar(
    //           SnackBar(content: Text(error.toString())),
    //         );
    //       },
    //     );
    //   },
    // );

    // Watch service state for loading
    final serviceState = ref.watch(serviceControllerProvider);

    void handleSave() {
      // Debug print statements
      log('Name: ${nameController.text}');
      log('Category: ${categoryController.text}');
      log('Description: ${descriptionController.text}');
      log('Price: ${priceController.text}');

      // Validate form
      if (formKey.currentState?.validate() != true) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Please fill all required fields')),
        );
        return;
      }

      // Validate image
      if (selectedImages.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Please select an image')),
        );
        return;
      }

      // Validate and parse price
      final price = double.tryParse(priceController.text.replaceAll(',', ''));

      if (price == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Please enter a valid price')),
        );
        return;
      }

      // All validation passed, proceed with API call
      ref.read(serviceControllerProvider.notifier).addService(
            serviceName: nameController.text,
            serviceCategory: categoryController.text,
            serviceDetails: descriptionController.text,
            rate: price,
            image: File(selectedImages.first.path),
          );
      context.pop();
    }

    return Scaffold(
      backgroundColor: const Color(0xffF5F6F9),
      appBar: AppBar(
        backgroundColor: const Color(0xffF5F6F9),
        title: const Text('Add Service'),
      ),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: context.space.space_200),
            child: Form(
              key: formKey,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: context.space.space_200),
                    const TextLabel(label: "Name Of Service"),
                    SizedBox(height: context.space.space_200),
                    TextFieldWidget(
                      controller: nameController,
                      hintText: 'Service Name',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter service name';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: context.space.space_100),
                    const TextLabel(label: "Service Category"),
                    SizedBox(height: context.space.space_150),
                    TextFieldWidget(
                      controller: categoryController,
                      hintText: 'Enter Service Category',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter service category';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: context.space.space_200),
                    const TextLabel(label: "Service Description"),
                    SizedBox(height: context.space.space_150),
                    TextFieldWidget(
                      controller: descriptionController,
                      hintText: 'Enter Service Description',
                      isLarge: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter service description';
                        }
                        return null;
                      },
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
                                    padding: EdgeInsets.only(
                                        right: context.space.space_50),
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
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter price';
                        }
                        if (double.tryParse(value.replaceAll(',', '')) ==
                            null) {
                          return 'Please enter a valid price';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: context.space.space_200),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        OutlineButtonWidget(
                          label: 'Cancel',
                          onTap: () => Navigator.pop(context),
                        ),
                        ButtonWidget(
                          label: 'Save',
                          onTap: handleSave,
                        ),
                      ],
                    ),
                    SizedBox(height: context.space.space_200),
                  ],
                ),
              ),
            ),
          ),
          if (serviceState.isLoading)
            const Center(child: CircularProgressIndicator()),
        ],
      ),
    );
  }
}
