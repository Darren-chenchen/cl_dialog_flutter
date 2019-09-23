import Flutter
import UIKit
import IDealist

public class SwiftClDialogFlutterPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "cl_dialog_flutter", binaryMessenger: registrar.messenger())
    let instance = SwiftClDialogFlutterPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    if call.method == "IDDialog.id_show" {
        let argument = call.arguments as? [String:Any]
        let title = argument?["title"] as? String ?? ""
        let msg = argument?["msg"] as? String ?? ""
        let leftActionTitle = argument?["leftActionTitle"] as? String ?? "取消"
        let rightActionTitle = argument?["rightActionTitle"] as? String ?? "确定"

        IDDialog.id_show(title: title, msg: msg, leftActionTitle: leftActionTitle, rightActionTitle: rightActionTitle, leftHandler: {
            result(false)
        }) {
            result(true)
        }
    }
    if call.method == "IDDialog.id_showImg" {
        let argument = call.arguments as? [String:Any]
        let state = argument?["state"] as? String ?? ""
        let msg = argument?["msg"] as? String ?? ""
        let leftActionTitle = argument?["leftActionTitle"] as? String ?? "取消"
        let rightActionTitle = argument?["rightActionTitle"] as? String ?? "确定"
        var type = IDDialogUtilImageType.success
        if (state == "success") {
            type = IDDialogUtilImageType.success
        }
        if (state == "fail") {
            type = IDDialogUtilImageType.fail
        }
        if (state == "warning") {
            type = IDDialogUtilImageType.warning
        }
        IDDialog.id_showImg(success: type, msg: msg, leftActionTitle: leftActionTitle, rightActionTitle: rightActionTitle, leftHandler: {
            result(false)
        }) {
            result(true)
        }
    }
  }
}
