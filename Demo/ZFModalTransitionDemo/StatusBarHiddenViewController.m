//
//  StatusBarHiddenViewController.m
//  ZFModalTransitionDemo
//
//  Created by Yu Sugawara on 7/23/15.
//  Copyright (c) 2015 zoonref. All rights reserved.
//

#import "StatusBarHiddenViewController.h"
#import "ZFModalTransitionAnimator.h"

@interface StatusBarHiddenViewController ()

@property (nonatomic) ZFModalTransitionAnimator *animator;

@end

@implementation StatusBarHiddenViewController

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UITableViewCell *)sender
{
    UIViewController *modalVC = segue.destinationViewController;
    self.animator = [ZFModalTransitionAnimator ys_iOSModalAnimatorWithModalViewController:modalVC];
}

- (IBAction)dismissButtonDidPush:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - Status Bar

- (UIStatusBarStyle)preferredStatusBarStyle
{
    if (self.presentedViewController) {
        return [self.presentedViewController preferredStatusBarStyle];
    }
    return [super preferredStatusBarStyle];
}

- (BOOL)prefersStatusBarHidden
{
    if (self.presentedViewController) {
        return [self.presentedViewController prefersStatusBarHidden];
    }
    return YES;
}

@end
