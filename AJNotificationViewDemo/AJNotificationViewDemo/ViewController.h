//
//  ViewController.h
//  AJNotificationViewDemo
//
//  Created by Alberto Jerez on 02/08/12.
//  Copyright (c) 2012 CodeApps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIView *secondView;
- (IBAction)showNotificaction:(id)sender;
- (IBAction)hideNotification:(id)sender;
- (IBAction)showBlueNotification:(id)sender;
- (IBAction)showGreenNotification:(id)sender;
- (IBAction)showRedNotification:(id)sender;
- (IBAction)showOrangeNotification:(id)sender;
- (IBAction)changeBackground:(id)sender;
- (IBAction)showNotificactionWithoutlines:(id)sender;
- (IBAction)showBlueNotificationWithoutlines:(id)sender;
- (IBAction)showGreenNotificationWithoutlines:(id)sender;
- (IBAction)showRedNotificationWithoutlines:(id)sender;
- (IBAction)showOrangeNotificationWithoutlines:(id)sender;
@end
