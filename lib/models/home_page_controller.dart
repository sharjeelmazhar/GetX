import 'package:get/get.dart';
import 'package:logger/logger.dart';

class HomePageController extends GetxController {
  final logger = Logger(
    printer: PrettyPrinter(
        methodCount: 2, // Number of method calls to be displayed
        errorMethodCount: 8, // Number of method calls if stacktrace is provided
        lineLength: 120, // Width of the output
        colors: true, // Colorful log messages
        printEmojis: true, // Print an emoji for each log message
        printTime: false // Should each log print contain a timestamp
        ),
  );
  RxInt _counter = 0.obs;

  void intrement() {
    _counter++;
    logger.d('Counter incremented to: $_counter');
  }

  int getCounter() {
    return _counter.toInt();
  }
}
