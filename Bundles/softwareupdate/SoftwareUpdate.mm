#import <Preferences/Preferences.h>

@interface SoftwareUpdateListController: PSListController {
UIActivityIndicatorView *checkingUpdateSpinner;
}
@end

@implementation SoftwareUpdateListController
-(id)loadSpecifiersFromPlistName:(id)specifiers {
mainView = [[UIView alloc] initWithFrame:viewRect];

mainView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageWithContentsOfFile:@"/System/Library/PreferenceBundles/Configurator.bundle/Applying.png"]];

[window addSubview:mainView];

checkingUpdateSpinner = [[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
checkingUpdateSpinner.frame = CGRectMake(0, 0, 40, 40);
checkingUpdateSpinner.center = mainView.center;
checkingUpdateSpinner.hidesWhenStopped = NO;
checkingUpdateSpinner.hidden = NO;
[mainView addSubview:checkingUpdateSpinner];
[checkingUpdateSpinner startAnimating];
return nil;
}

-(void)ota {
system("/System/Library/PreferenceBundles/SoftwareUpdate.bundle/root");
}
@end

// vim:ft=objc