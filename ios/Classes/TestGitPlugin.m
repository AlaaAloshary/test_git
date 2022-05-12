#import "TestGitPlugin.h"
#if __has_include(<test_git/test_git-Swift.h>)
#import <test_git/test_git-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "test_git-Swift.h"
#endif

@implementation TestGitPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftTestGitPlugin registerWithRegistrar:registrar];
}
@end
