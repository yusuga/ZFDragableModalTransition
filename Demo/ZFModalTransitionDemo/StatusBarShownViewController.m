//
//  StatusBarShownViewController.m
//  ZFModalTransitionDemo
//
//  Created by Yu Sugawara on 7/24/15.
//  Copyright (c) 2015 zoonref. All rights reserved.
//

#import "StatusBarShownViewController.h"
#import "ZFModalTransitionAnimator.h"

@interface StatusBarShownViewController ()

@property (nonatomic) ZFModalTransitionAnimator *animator;

@end

@implementation StatusBarShownViewController

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UITableViewCell *)sender
{
    UIViewController *modalVC = segue.destinationViewController;
    self.animator = [ZFModalTransitionAnimator ys_iOSModalAnimatorWithModalViewController:modalVC];
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
    return NO;
}

@end
