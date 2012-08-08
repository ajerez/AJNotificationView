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
- (IBAction)showBlueNotification:(id)sender;
- (IBAction)showGreenNotification:(id)sender;
- (IBAction)showRedNotification:(id)sender;
- (IBAction)showOrangeNotification:(id)sender;

- (IBAction)changeBackground:(id)sender;

@end
