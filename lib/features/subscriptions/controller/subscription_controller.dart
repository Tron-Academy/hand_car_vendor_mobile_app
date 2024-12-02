import 'package:handcar_ventor/features/subscriptions/controller/model/subscriptions_model.dart';
import 'package:handcar_ventor/features/subscriptions/service/subscriptions_api_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'subscription_controller.g.dart';

@riverpod
class SubscriptionController extends _$SubscriptionController {
  @override
  Future<SubscriptionsModel> build() async {
    final response = await SubscriptionsApiService().getSubscriptions();
    return response;
  }
  
  //get All Subscriptions

  Future<void> getSubscriptions() async {
    try {
      await SubscriptionsApiService().getSubscriptions();
    } catch (e) {
      throw Exception(e);
    }
  }
}
