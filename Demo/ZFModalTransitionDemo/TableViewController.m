//
//  TableViewController.m
//  ZFModalTransitionDemo
//
//  Created by Yu Sugawara on 7/23/15.
//  Copyright (c) 2015 zoonref. All rights reserved.
//

#import "TableViewController.h"
#import "ZFModalTransitionAnimator.h"

@interface TableViewController ()

@property (nonatomic) ZFModalTransitionAnimator *animator;

@end

@implementation TableViewController

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UITableViewCell *)sender
{
    if (![sender isKindOfClass:[UITableViewCell class]]) return;
    
    NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
    
    if ([indexPath compare:[NSIndexPath indexPathForRow:0 inSection:0]] == NSOrderedSame) return;
    
    UIViewController *modalVC = segue.destinationViewController;
    self.animator = [ZFModalTransitionAnimator ys_iOSModalAnimatorWithModalViewController:modalVC];
}

#pragma mark - Table view data source

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    if ([indexPath compare:[NSIndexPath indexPathForRow:1 inSection:1]] == NSOrderedSame) {
        UITableViewController *tableVC = [self.storyboard instantiateViewControllerWithIdentifier:@"ModalTableViewController"];
        UINavigationController *modalVC = [[UINavigationController alloc] initWithRootViewController:tableVC];
        modalVC.navigationBar.barStyle = UIBarStyleBlack;
        
        self.animator = [ZFModalTransitionAnimator ys_iOSModalAnimatorWithModalViewController:modalVC];
        [self presentViewController:modalVC animated:YES completion:nil];
    }
}

@end
