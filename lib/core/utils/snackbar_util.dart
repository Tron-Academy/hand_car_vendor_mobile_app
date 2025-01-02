

import 'package:handcar_ventor/core/widgets/snackbar_widget.dart';
import 'package:handcar_ventor/main.dart';

class SnackbarUtil {
  /// show the message in the snackbar
  ///
  /// [message] is the message to be shown to the user
  static void showsnackbar({String message = "", bool showretry = false}) {
    final currentState = MainApp.scaffoldMessengerKey.currentState;
    if (currentState != null) {
      currentState.hideCurrentSnackBar();
      currentState.showSnackBar(Showsnackbar(
        errorMessage: message,
        showretry: showretry,
      ));
    }
  }
}
