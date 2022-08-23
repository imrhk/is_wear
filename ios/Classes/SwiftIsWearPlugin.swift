import Flutter
import UIKit

public class SwiftIsWearPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "is_wear", binaryMessenger: registrar.messenger())
    let instance = SwiftIsWearPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
      if(call.method == "check") {
        #if os(watchOS)
            result(true)
        #else
            result(false)
        #endif
      }
  }
}
