//
//  NavigationController.m
//  ZFModalTransitionDemo
//
//  Created by Yu Sugawara on 7/23/15.
//  Copyright (c) 2015 zoonref. All rights reserved.
//

#import "NavigationController.h"
#import "ZFModalTransitionAnimator.h"

@interface NavigationController ()

@end

@implementation NavigationController

- (UIStatusBarStyle)preferredStatusBarStyle
{
    if (self.presentedViewController) {
        return [self.presentedViewController preferredStatusBarStyle];
    }
    return [super preferredStatusBarStyle];
}

@end
