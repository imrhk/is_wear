import Cocoa
import FlutterMacOS

public class IsWearPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "is_wear", binaryMessenger: registrar.messenger)
    let instance = IsWearPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "check":
      result(false)
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
