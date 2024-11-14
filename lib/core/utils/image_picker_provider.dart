import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'image_picker_provider.freezed.dart';
part 'image_picker_provider.g.dart';

@freezed
class ImagePickerProviderState with _$ImagePickerProviderState {
  factory ImagePickerProviderState({
    required List<XFile> selectedImages,
  })=_ImagePickerProviderState;
}

@riverpod
class ImagePickerProvider extends _$ImagePickerProvider {
  @override
  ImagePickerProviderState build() {
    return  ImagePickerProviderState(selectedImages: []);
  }
  void pickImages() async {
  final List<XFile> images = await ImagePicker().pickMultiImage();
  if (images.isNotEmpty) {
    state = ImagePickerProviderState(selectedImages: images);
  }
}
}

