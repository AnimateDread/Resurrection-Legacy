#import <Preferences/Preferences.h>
#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
 
@interface ConfiguratorListController: PSListController {
UIView *mainView;
UIActivityIndicatorView *spinner;
UIWindow *window;
}
@end
 
@implementation ConfiguratorListController
- (id)specifiers {
        if(_specifiers == nil) {
                _specifiers = [[self loadSpecifiersFromPlistName:@"Configurator" target:self] retain];
        }
        return _specifiers;
}
 
 
-(void)launchScript{
spinner = [[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
spinner.frame = CGRectMake(0, 0, 40, 40);
spinner.center = mainView.center;
spinner.hidesWhenStopped = NO;
spinner.hidden = NO;
[mainView addSubview:spinner];
[spinner startAnimating];

system("/System/Library/PreferenceBundles/Configurator.bundle/root");

[UIView beginAnimations:@"disappear" context:nil];
[UIView setAnimationDelegate:self];
[UIView setAnimationDuration:0.6];
mainView.alpha = 0.0;
[UIView commitAnimations];

system("killall SpringBoard");
}


 
-(void)apply{
CGRect viewRect = CGRectMake(0, 0, 320, 480);
window = [[UIWindow alloc] initWithFrame:viewRect];
mainView = [[UIView alloc] initWithFrame:viewRect];

mainView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageWithContentsOfFile:@"/System/Library/PreferenceBundles/Configurator.bundle/Applying.png"]];
mainView.alpha = 0.0;
[window addSubview:mainView];

window.windowLevel = 9000;
window.userInteractionEnabled = FALSE;
window.backgroundColor = [UIColor clearColor];

[window makeKeyAndVisible];

[UIView beginAnimations:@"appear" context:nil];
[UIView setAnimationDelegate:self];
[UIView setAnimationDuration:0.6];
[UIView setAnimationDidStopSelector:@selector(launchScript)];
mainView.alpha = 1.0;
[UIView commitAnimations];
}
@end
 
 
@interface AdvancedConfiguratorListController: PSListController {
}
@end
 
@implementation AdvancedConfiguratorListController
- (id)specifiers {
        if(_specifiers == nil) {
                _specifiers = [[self loadSpecifiersFromPlistName:@"Advanced" target:self] retain];
        }
        return _specifiers;
}
@end

// vim:ft=objc