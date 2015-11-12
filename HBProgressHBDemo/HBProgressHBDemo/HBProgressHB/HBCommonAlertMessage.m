//
//  HBCommonAlertMessage.m
//  HBProgressHBDemo
//
//  Created by wangfeng on 15/11/11.
//  Copyright (c) 2015年 HustBroventurre. All rights reserved.
//

#import "HBCommonAlertMessage.h"
#import "MBProgressHUD.h"
@implementation HBCommonAlertMessage


+(void)showMessage:(NSString *)message
{
    UIWindow* window = [UIApplication sharedApplication].keyWindow;
    [self showMessage:message inView:window];

}
+(void)showMessage:(NSString *)message inView:(UIView*)view
{
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.mode = MBProgressHUDModeText;
    hud.labelText = message;
    hud.margin = 10.f;
    hud.removeFromSuperViewOnHide = YES;
    [hud hide:YES afterDelay:2.f];
}

+(void)showProgresssWithMessage:(NSString *)message
{
    UIWindow* window = [UIApplication sharedApplication].keyWindow;
    [HBCommonAlertMessage showProgresssWithMessage:message inView:window];
}
+(void)showProgresssWithMessage:(NSString *)message inView:(UIView *)view
{
    MBProgressHUD* hub = [[MBProgressHUD alloc]initWithView:view];
    hub.mode = MBProgressHUDModeIndeterminate;
    hub.labelText = message;
    hub.removeFromSuperViewOnHide = YES;
    [view addSubview:hub];
    [hub show:YES];
}
+(void)hideProgress
{
    UIWindow* window = [UIApplication sharedApplication].keyWindow;

    [MBProgressHUD hideHUDForView:window animated:YES];
}
+(void)hideProgressInView:(UIView *)view
{
    [MBProgressHUD hideHUDForView:view animated:YES];
}

+(void)showSuccessWithMessage:(NSString *)message inView:(UIView *)view
{
    [HBCommonAlertMessage showMessage:message image:@"MBProgressHUD.bundle/success" inView:view];

}
+(void)showErrorWithMessage:(NSString *)message inView :(UIView *)view
{
    [HBCommonAlertMessage showMessage:message image:@"MBProgressHUD.bundle/failure" inView:view];
}
+(void)showMessage:(NSString *)message image:(NSString*)imageName inView:(UIView *)view
{
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.labelText = message;
    hud.customView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:imageName]];
    hud.mode = MBProgressHUDModeCustomView;
    hud.removeFromSuperViewOnHide = YES;
    [hud hide:YES afterDelay:1.2];

}



@end
