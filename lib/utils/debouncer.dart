import 'dart:async';
import 'dart:ui';

class Debouncer {
  Debouncer({required this.milliseconds, this.executeOnCancel = false});

  final int milliseconds;
  final bool executeOnCancel;

  Timer? _timer;
  VoidCallback? _action;

  void run(VoidCallback action) {
    if (_timer?.isActive ?? false) {
      _timer?.cancel();
    }
    _action = action;
    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }

  void cancel() {
    if (executeOnCancel) {
      _action?.call();
    }
    _timer?.cancel();
  }
}
