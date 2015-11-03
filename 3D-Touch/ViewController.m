//
//  ViewController.m
//  3D-Touch
//
//  Created by 杜维欣 on 15/11/2.
//  Copyright © 2015年 杜维欣. All rights reserved.
//

#import "ViewController.h"
#import "ForceController.h"
#import "LxDBAnything.h"
#import "DefaultController.h"
#import "SelectedController.h"
#import "DestructiveController.h"

@interface ViewController ()<UIViewControllerPreviewingDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *ado;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //判断forceTouch是否可用
    if (self.view.traitCollection.forceTouchCapability == UIForceTouchCapabilityAvailable) {
        [self registerForPreviewingWithDelegate:self sourceView:self.view];
    }
    
}

- (UIViewController *)previewingContext:(id<UIViewControllerPreviewing>)context viewControllerForLocation:(CGPoint) point
{
    CGPoint convertedLocation = [self.view convertPoint:point toView:self.ado];
    if (CGRectContainsPoint(self.ado.bounds, convertedLocation)) {
        ForceController *force = [[ForceController alloc] init];
        force.imageName = @"abc";
        force.aForceBlock = ^(NSString *type)
        {
            if ([type isEqualToString:@"Default"]) {
                DefaultController *defalt = [[DefaultController alloc] init];
                [self.navigationController pushViewController:defalt animated:NO];
            }else if ([type isEqualToString:@"Selected"])
            {
                SelectedController *select = [[SelectedController alloc] init];
                [self.navigationController pushViewController:select animated:NO];
            }else
            {
                DestructiveController *destructivie = [[DestructiveController alloc] init];
                [self.navigationController pushViewController:destructivie animated:NO];
            }
        };
        return force;
    }
    return nil;
}

- (void)previewingContext:(id <UIViewControllerPreviewing>)previewingContext commitViewController:(UIViewController *)viewControllerToCommit NS_AVAILABLE_IOS(9_0)
{
    [self.navigationController pushViewController:viewControllerToCommit animated:YES];
}


@end
