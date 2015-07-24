//
//  ModalTableViewController.m
//  ZFModalTransitionDemo
//
//  Created by Yu Sugawara on 7/23/15.
//  Copyright (c) 2015 zoonref. All rights reserved.
//

#import "ModalTableViewController.h"
#import "ZFModalTransitionAnimator.h"

@interface ModalTableViewController ()

@end

@implementation ModalTableViewController

- (IBAction)dragableSwitchDidChange:(UISwitch *)sender
{
    ZFModalTransitionAnimator *animator = (id)self.navigationController.transitioningDelegate;
    NSParameterAssert([animator isKindOfClass:[ZFModalTransitionAnimator class]]);
    animator.dragable = sender.on;
}

- (IBAction)dismissButtonDidPush:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
