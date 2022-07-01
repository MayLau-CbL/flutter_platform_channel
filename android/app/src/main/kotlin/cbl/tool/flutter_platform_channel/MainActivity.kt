package cbl.tool.flutter_platform_channel

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity() {
    private val channel = "cbl.tool.flutter_platform_channel"
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        // TODO:[Android] [1] override configureFlutterEngine and create MethodChannel
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, channel).setMethodCallHandler {
            call, result ->
            if (call.method == "shakeHand") {
                result.success("Hi from Android!");
            }else{
                result.notImplemented();
            }
          }
    }
}
