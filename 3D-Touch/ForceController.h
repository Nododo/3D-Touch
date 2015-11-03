//
//  ForController.h
//  3D-Touch
//
//  Created by 杜维欣 on 15/11/3.
//  Copyright © 2015年 杜维欣. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^forceBlock)(NSString *);

@interface ForceController : UIViewController<UIPreviewActionItem>
@property (nonatomic,copy)NSString *imageName;
@property (nonatomic,copy)forceBlock aForceBlock;

@end
