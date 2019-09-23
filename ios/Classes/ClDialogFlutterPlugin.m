#import "ClDialogFlutterPlugin.h"
#import <cl_dialog_flutter/cl_dialog_flutter-Swift.h>

@implementation ClDialogFlutterPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftClDialogFlutterPlugin registerWithRegistrar:registrar];
}
@end
