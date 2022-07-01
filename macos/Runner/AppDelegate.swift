import Cocoa
import FlutterMacOS

@NSApplicationMain
class AppDelegate: FlutterAppDelegate {
    override func applicationDidFinishLaunching(_ notification: Notification) {
//        // TODO:[Mac][1] Get the flutter root view controller for binary messenger
//        let controller: FlutterViewController = mainFlutterWindow?.contentViewController as! FlutterViewController
//        // TODO:[Mac][2] Set the flutter channel
//        let flutterChannel = FlutterMethodChannel(name: "cbl.tool.flutter_platform_channel",
//                binaryMessenger: controller.engine.binaryMessenger)
//        // TODO:[Mac][3] Set the channel method call handler
//        flutterChannel.setMethodCallHandler({
//            (call: FlutterMethodCall, result: @escaping FlutterResult) -> Void in
//            if (call.method == "shakeHand") {
//                result(String("Hi from MacOS!"))
//            } else {
//                result(FlutterMethodNotImplemented)
//            }
//        })
    }

    override func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        return true
    }
}
