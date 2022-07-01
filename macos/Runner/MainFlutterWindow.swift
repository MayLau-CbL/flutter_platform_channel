import Cocoa
import FlutterMacOS

class MainFlutterWindow: NSWindow {
    override func awakeFromNib() {
        let flutterViewController = FlutterViewController.init()
        let windowFrame = self.frame
        self.contentViewController = flutterViewController
        self.setFrame(windowFrame, display: true)

        // TODO:[Mac][1] Set the flutter channel
        let flutterChannel = FlutterMethodChannel(name: "cbl.tool.flutter_platform_channel",
                binaryMessenger: flutterViewController.engine.binaryMessenger)
        // TODO:[Mac][2] Set the channel method call handler
        flutterChannel.setMethodCallHandler({
            (call: FlutterMethodCall, result: @escaping FlutterResult) -> Void in
            if (call.method == "shakeHand") {
                result(String("Hi from MacOS!"))
            } else {
                result(FlutterMethodNotImplemented)
            }
        })

        RegisterGeneratedPlugins(registry: flutterViewController)
        super.awakeFromNib()
    }
}
