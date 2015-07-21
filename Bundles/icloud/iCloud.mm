#import <Preferences/Preferences.h>

@interface iCloudListController: PSListController {
}
@end

@implementation iCloudListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"iCloud" target:self] retain];
	}
	return _specifiers;
}

-(void)backup{
system("/System/Library/PreferenceBundles/iCloud.bundle/backup");
}

-(void)restore{
system("/System/Library/PreferenceBundles/iCloud.bundle/restore");
}
@end

// vim:ft=objc
