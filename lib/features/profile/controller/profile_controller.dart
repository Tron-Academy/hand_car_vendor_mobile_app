import 'package:handcar_ventor/features/profile/controller/model/profile_model.dart';
import 'package:handcar_ventor/features/profile/services/profile_api_services.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_controller.g.dart';

@riverpod
class ProfileController extends _$ProfileController {
  @override
  Future<ProfileModel> build() async {
    final response = await ProfileApiServices.getProfile();
    return response;
  }

  Future<void> getProfileDetiels() async {
    try {
      await ProfileApiServices.getProfile();
    } catch (e) {
      throw Exception(e);
    }
  }
}
