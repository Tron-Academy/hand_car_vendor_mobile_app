

// Provider for TokenStorage
import 'package:handcar_ventor/core/utils/token_storage.dart';
import 'package:handcar_ventor/features/auth/model/auth_model.dart';
import 'package:handcar_ventor/features/auth/service/auth_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_view_model.g.dart';

final tokenStorageProvider = Provider((ref) => TokenStorage());

@riverpod
class AuthController extends _$AuthController {
  @override
  FutureOr<AuthModel?> build() async {
    final tokenStorage = ref.read(tokenStorageProvider);
    
    // Check if we have tokens stored
    if (tokenStorage.hasTokens) {
      final accessToken = tokenStorage.getAccessToken()!;
      final refreshToken = tokenStorage.getRefreshToken()!;
      
      // Create AuthModel from stored tokens
      return AuthModel(
        accessToken: accessToken,
        refreshToken: refreshToken,
        message: 'Restored from storage',
      );
    }
    return null;
  }

  Future<void> login(String username, String password) async {
    state = const AsyncValue.loading();
    try {
      final Map<String, dynamic> loginResponse =
          await ref.read(vendorAuthServiceProvider).login(username, password);

      final authModel = AuthModel.fromJson(loginResponse);
      
      // Save tokens to storage
      await ref.read(tokenStorageProvider).saveTokens(
        accessToken: authModel.accessToken,
        refreshToken: authModel.refreshToken,
      );
           
      
      state = AsyncValue.data(authModel);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }





  Future<void> logout() async {
    state = const AsyncValue.loading();
    try {
      await ref.read(vendorAuthServiceProvider).logout();
      // Clear stored tokens
      await ref.read(tokenStorageProvider).clearTokens();
      state = const AsyncValue.data(null);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }
}