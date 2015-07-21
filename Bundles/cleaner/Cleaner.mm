#import <Preferences/Preferences.h>

@interface CleanerListController: PSListController {
}
@end

@implementation CleanerListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"Cleaner" target:self] retain];
	}
	return _specifiers;
}
-(void)clean {
system("/System/Library/PreferenceBundles/Cleaner.bundle/root");
}
@end

// vim:ft=objc
