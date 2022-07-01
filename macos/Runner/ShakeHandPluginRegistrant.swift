//
// Created by May Lau on 1/7/2022.
//


import FlutterMacOS
import Foundation

public class ShakeHandPluginRegistrant: NSObject, FlutterPlugin {
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(
                name: "cbl.tool.flutter_platform_channel",
                binaryMessenger: registrar.messenger)
        let instance = ShakeHandPluginRegistrant()
        registrar.addMethodCallDelegate(instance, channel: channel)
    }

    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        if(call.method == "shakeHand"){
            result(String("Hi from MacOS!"));
        }else{
            result(FlutterMethodNotImplemented);
        }
    }
}
