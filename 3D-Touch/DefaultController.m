//
//  DefaultController.m
//  3D-Touch
//
//  Created by 杜维欣 on 15/11/3.
//  Copyright © 2015年 杜维欣. All rights reserved.
//

#import "DefaultController.h"

@interface DefaultController ()

@end

@implementation DefaultController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"DefaultController";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (void)dealloc
{
    NSLog(@"dealloc = DefaultController");
}
@end
