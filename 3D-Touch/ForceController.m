//
//  ForController.m
//  3D-Touch
//
//  Created by 杜维欣 on 15/11/3.
//  Copyright © 2015年 杜维欣. All rights reserved.
//

#import "ForceController.h"
#import "LxDBAnything.h"

@interface ForceController ()

@end

@implementation ForceController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImageView *force =[[UIImageView alloc] initWithFrame:CGRectMake(0, 100, 400, 400)];
    [self.view addSubview:force];
    force.image = [UIImage imageNamed:self.imageName];
}


- (NSArray <id <UIPreviewActionItem>> *)previewActionItems {
    UIPreviewAction *action = [UIPreviewAction actionWithTitle:@"Default" style:UIPreviewActionStyleDefault handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        if (self.aForceBlock) {
            self.aForceBlock(@"Default");
        }
    }];
    
    UIPreviewAction *action2 = [UIPreviewAction actionWithTitle:@"Selected" style:UIPreviewActionStyleSelected handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        if (self.aForceBlock) {
            self.aForceBlock(@"Selected");
        }

    }];
    
    UIPreviewAction *action3 = [UIPreviewAction actionWithTitle:@"Destructive" style:UIPreviewActionStyleDestructive handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        if (self.aForceBlock) {
            self.aForceBlock(@"Destructive");
        }

    }];

    
    UIPreviewActionGroup *group1 = [UIPreviewActionGroup actionGroupWithTitle:@"Action Group" style:UIPreviewActionStyleDefault actions:@[action, action2, action3]];
    
    return @[action, action2, action3, group1];
}

@end
