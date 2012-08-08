//
//  ViewController.m
//  AJNotificationViewDemo
//
//  Created by Alberto Jerez on 02/08/12.
//  Copyright (c) 2012 CodeApps. All rights reserved.
//

#import "ViewController.h"
#import "AJNotificationView.h"

@interface ViewController (){
    BOOL isDarkBackground;
}
@end

@implementation ViewController
@synthesize secondView;

- (void)viewDidLoad{
    isDarkBackground = NO;
    //self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"pattern.png"]];
    
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
    [AJNotificationView showNoticeInView:self.view
                                   title:@"Information notification"
                               hideAfter:2.5f];
}

- (IBAction)showBlueNotification:(id)sender {
    [AJNotificationView showNoticeInView:self.view
                                    type:AJNotificationTypeBlue
                                   title:@"Success notification (Blue)"
                               hideAfter:2.5f];
}

- (IBAction)showGreenNotification:(id)sender {
    [AJNotificationView showNoticeInView:self.view
                                    type:AJNotificationTypeGreen
                                   title:@"Success notification (Green)"
                               hideAfter:2.5f];
}

- (IBAction)showRedNotification:(id)sender {
    [AJNotificationView showNoticeInView:self.view
                                    type:AJNotificationTypeRed
                                   title:@"Error notification"
                               hideAfter:2.5f];
}

- (IBAction)showOrangeNotification:(id)sender {
    [AJNotificationView showNoticeInView:self.view
                                    type:AJNotificationTypeOrange
                                   title:@"Warning notification"
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
