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
    AJNotificationView *panel;
}
@end

@implementation ViewController
@synthesize secondView;

- (void)viewDidLoad{
    isDarkBackground = NO;
    
    // Register for detail disclosure notification
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(detailDisclosureButtonPressed:) name:@"detail_disclosure_button_pressed"
                                               object:nil];
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

- (void)detailDisclosureButtonPressed:(NSNotification*)notification{
    NSLog(@"Detail disclosure button pressed");
}
////////////////////////////////////////////////////////////////////////
#pragma mark - Demo
////////////////////////////////////////////////////////////////////////

- (IBAction)showNotificaction:(id)sender {
    panel = [AJNotificationView showNoticeInView:[(AppDelegate *)[[UIApplication sharedApplication] delegate] window]
                                           title:@"Information notification"
                                       hideAfter:0];
    
}

- (IBAction)hideNotification:(id)sender {
    if (panel)
        [panel hide];
}
- (IBAction)showNotificactionWithoutlines:(id)sender {
    
    //Default demo
    [AJNotificationView showNoticeInView:self.view
                                    type:AJNotificationTypeDefault
                                   title:@"Information notification"
                         linedBackground:AJLinedBackgroundTypeDisabled
                               hideAfter:2.5f];
}
- (IBAction)showBlueNotification:(id)sender {
    //Demo with response block
    [AJNotificationView showNoticeInView:self.view
                                    type:AJNotificationTypeBlue
                                   title:@"Success notification 1 (Blue)"
                         linedBackground:AJLinedBackgroundTypeAnimated
                               hideAfter:2.5f
                                response:^{
                                    //This block is called when user taps in the notification
                                    NSLog(@"Response block");
                                }
     ];
}

- (IBAction)showBlueNotificationWithoutlines:(id)sender {
    //Demo with offset, delay and response block
    [AJNotificationView showNoticeInView:self.view
                                    type:AJNotificationTypeBlue
                                   title:@"Success notification 2 (Blue)"
                         linedBackground:AJLinedBackgroundTypeDisabled
                               hideAfter:2.5f
                                  offset:50.0f
                                   delay:1.0f
                                response:^{
                                    NSLog(@"Response block");
                                }
     ];
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
                                    type:AJNotificationTypeBlue
                                   title:@"Detail disclosure notification"
                         linedBackground:AJLinedBackgroundTypeAnimated
                               hideAfter:2.5f offset:0.0f delay:0.0f detailDisclosure:YES
                                response:^{
                                    NSLog(@"Response block");
                                }
     ];
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
