//
//  ViewController.m
//  AJNotificationViewDemo
//
//  Created by Alberto Jerez on 02/08/12.
//  Copyright (c) 2012 CodeApps. All rights reserved.
//

#import "ViewController.h"
#import "AJNotificationView.h"
#import "AppDelegate.h"
@interface ViewController (){
    BOOL isDarkBackground;
}
@end

@implementation ViewController
@synthesize secondView;

- (void)viewDidLoad{
    isDarkBackground = NO;    
    [super viewDidLoad];
}

- (void)viewDidUnload{
    [self setSecondView:nil];
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

////////////////////////////////////////////////////////////////////////
#pragma mark - Demo
////////////////////////////////////////////////////////////////////////

- (IBAction)showNotificaction:(id)sender {
    [AJNotificationView showNoticeInView:[(AppDelegate *)[[UIApplication sharedApplication] delegate] window]
                                   title:@"Information notification"
                               hideAfter:2.5f];
}
- (IBAction)showNotificactionWithoutlines:(id)sender {
    [AJNotificationView showNoticeInView:self.view
                                    type:AJNotificationTypeDefault
                                   title:@"Information notification"
                         linedBackground:AJLinedBackgroundTypeDisabled
                               hideAfter:2.5f];
}
- (IBAction)showBlueNotification:(id)sender {
    [AJNotificationView showNoticeInView:self.view
                                    type:AJNotificationTypeBlue
                                   title:@"Success notification 1 (Blue)"
                         linedBackground:AJLinedBackgroundTypeAnimated
                               hideAfter:2.5f];
}

- (IBAction)showBlueNotificationWithoutlines:(id)sender {
    [AJNotificationView showNoticeInView:self.view
                                    type:AJNotificationTypeBlue
                                   title:@"Success notification 2 (Blue)"
                         linedBackground:AJLinedBackgroundTypeDisabled
                               hideAfter:2.5f];
}

- (IBAction)showGreenNotification:(id)sender {
    [AJNotificationView showNoticeInView:self.view
                                    type:AJNotificationTypeGreen
                                   title:@"Success notification 1 (Green)"
                               hideAfter:2.5f];
}

- (IBAction)showGreenNotificationWithoutlines:(id)sender {
    [AJNotificationView showNoticeInView:self.view
                                    type:AJNotificationTypeGreen
                                   title:@"Success notification 2 (Green)"
                         linedBackground:AJLinedBackgroundTypeDisabled
                               hideAfter:2.5f];
}

- (IBAction)showRedNotification:(id)sender {
    [AJNotificationView showNoticeInView:self.view
                                    type:AJNotificationTypeRed
                                   title:@"Error notification"
                               hideAfter:2.5f];
}

- (IBAction)showRedNotificationWithoutlines:(id)sender {
    [AJNotificationView showNoticeInView:self.view
                                    type:AJNotificationTypeRed
                                   title:@"Error notification"
                         linedBackground:AJLinedBackgroundTypeDisabled
                               hideAfter:2.5f];
}

- (IBAction)showOrangeNotification:(id)sender {
    [AJNotificationView showNoticeInView:self.view
                                    type:AJNotificationTypeOrange
                                   title:@"Warning notification"
                         linedBackground:AJLinedBackgroundTypeAnimated
                               hideAfter:2.5f];
}

- (IBAction)showOrangeNotificationWithoutlines:(id)sender {
    [AJNotificationView showNoticeInView:self.view
                                    type:AJNotificationTypeOrange
                                   title:@"Warning notification"
                         linedBackground:AJLinedBackgroundTypeDisabled
                               hideAfter:2.5f];
}



////////////////////////////////////////////////////////////////////////
#pragma mark - Change background
////////////////////////////////////////////////////////////////////////

- (IBAction)changeBackground:(id)sender {
    if (!isDarkBackground){
        self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"pattern.png"]];
        isDarkBackground = YES;
    }
    else{
        self.view.backgroundColor = [UIColor colorWithWhite:0.9f alpha:1.0f];
        isDarkBackground = NO;
    }
}

@end
