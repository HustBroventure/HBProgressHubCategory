//
//  HBCommonAlertMessage.h
//  HBProgressHBDemo
//
//  Created by wangfeng on 15/11/11.
//  Copyright (c) 2015年 HustBroventurre. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface HBCommonAlertMessage : NSObject
    //显示纯文字信息
+(void)showMessage:(NSString*)message;
+(void)showMessage:(NSString*)message inView:(UIView*)view;
    //显示成功信息，在window中显示
+(void)showSuccess;
+(void)showSuccessWithMessage:(NSString*)message inView:(UIView *)view;
    //显示失败信息，，在window中显示
+(void)showError;
+(void)showErrorWithMessage:(NSString*)message inView:(UIView *)view;

+(void)showProgresssWithMessage:(NSString*)message;
+(void)hideProgress;

+(void)showProgresssWithMessage:(NSString*)message inView:(UIView*)view;
+(void)hideProgressInView:(UIView*)view;


+(void)showAlertMessage:(NSString*)meaasge;

+(void)showAccurateProgresssWithMessage:(NSString*)message inView:(UIView *)view;

@end
