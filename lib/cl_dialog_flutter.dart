import 'dart:async';

import 'package:flutter/services.dart';

class CLDialogFlutter {
  static const MethodChannel _channel =
      const MethodChannel('cl_dialog_flutter');

  static Future<bool> cl_show(String title, String msg, String leftActionTitle, String rightActionTitle) async {
    bool isRight = await _channel.invokeMethod('IDDialog.id_show', {
      'title': title,
      'msg': msg,
      'leftActionTitle': leftActionTitle,
      'rightActionTitle': rightActionTitle
    });
    return isRight;
  }
  static Future<bool> cl_showImg(String state, String msg, String leftActionTitle, String rightActionTitle) async {
    bool isRight = await _channel.invokeMethod('IDDialog.id_showImg', {
      'state': state,
      'msg': msg,
      'leftActionTitle': leftActionTitle,
      'rightActionTitle': rightActionTitle
    });
    return isRight;
  }
}
