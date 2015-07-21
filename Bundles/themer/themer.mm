#import <Preferences/Preferences.h>

@interface themerListController: PSListController {
}
@end

@implementation themerListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"Themer" target:self] retain];
	}
	return _specifiers;
}

-(void)apply{
system("/System/Library/PreferenceBundles/Themer.bundle/apply");
}

@end

@interface optionsListController: PSListController {
}
@end

@implementation optionsListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"Options" target:self] retain];
	}
	return _specifiers;
}

-(void)refresh{
system("/System/Library/PreferenceBundles/Themer.bundle/refresh");
}

-(void)stock{
system("/System/Library/PreferenceBundles/Themer.bundle/stock");
}

@end
/*
@interface converterListController: PSListController {
}
@end

@implementation converterListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"Converter" target:self] retain];
	}
	return _specifiers;
}

-(void)convert{
system("/System/Library/PreferenceBundles/Themer.bundle/convert");
}

@end
*/

// vim:ft=objc
