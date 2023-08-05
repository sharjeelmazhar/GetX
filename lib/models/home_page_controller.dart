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

  //Obs
  RxInt _obsCounter = 0.obs;
  void obsIncrement() {
    _obsCounter++;
    logger.d('Incremented to: $_obsCounter');
  }

  int getObsCounter() {
    return _obsCounter.toInt();
  }

  //Getx
  RxInt _getXCounter = 0.obs;
  void getXIncrement() {
    _getXCounter++;
    logger.d('Incremented to: $_getXCounter');
  }

  int getGetxCounter() {
    return _getXCounter.toInt();
  }

  //Get Builder
  int _getBuilderCounter = 0;
  void getBuilderIncrement() {
    _getBuilderCounter++;
    update();
    logger.d('Incremented to: $_getBuilderCounter');
  }

  int getBuilderCounter() {
    return _getBuilderCounter.toInt();
  }
}
