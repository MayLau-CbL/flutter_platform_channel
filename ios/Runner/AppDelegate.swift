import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
    override func application(
            _ application: UIApplication,
            didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        // TODO:[IOS][1] Get the flutter root view controller for binary messenger
        let controller: FlutterViewController = window?.rootViewController as! FlutterViewController
        // TODO:[IOS][2] Set the flutter channel
        let flutterChannel = FlutterMethodChannel(name: "cbl.tool.flutter_platform_channel",
                binaryMessenger: controller.binaryMessenger)
        // TODO:[IOS][3] Set the channel method call handler
        flutterChannel.setMethodCallHandler({
            (call: FlutterMethodCall, result: @escaping FlutterResult) -> Void in
            if (call.method == "shakeHand") {
                result(String("Hi from IOS!"))
            } else {
                result(FlutterMethodNotImplemented)
            }
        })

        GeneratedPluginRegistrant.register(with: self)
        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
}
