#import <Preferences/Preferences.h>

@interface SoftwareUpdateListController: PSListController {
}
@end

@implementation SoftwareUpdateListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"SoftwareUpdate" target:self] retain];
}
return _specifiers;
}

-(void)ota {
system("/System/Library/PreferenceBundles/SoftwareUpdate.bundle/root");
}
@end

// vim:ft=objc