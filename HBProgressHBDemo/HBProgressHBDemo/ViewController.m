//
//  ViewController.m
//  HBProgressHBDemo
//
//  Created by wangfeng on 15/10/13.
//  Copyright (c) 2015年 HustBroventurre. All rights reserved.
//

#import "ViewController.h"
#import "MBProgressHUD.h"
#import "HBCommonAlertMessage.h"
@interface ViewController ()<MBProgressHUDDelegate>

@end

@implementation ViewController

- (IBAction)showMessage:(id)sender {

    [HBCommonAlertMessage showMessage:@" 请稍后再试 "];
}
- (IBAction)showProgress:(id)sender {
    [HBCommonAlertMessage showProgresssWithMessage:@"请稍后..."];

    [self dispanchTimerWithTime:5 Block:^{    [HBCommonAlertMessage hideProgress];
}];


}
-(void)myTask
{
        sleep(3);
}
- (IBAction)hideProgress:(id)sender {
    [HBCommonAlertMessage hideProgress];
}

- (IBAction)showAlertMessage:(id)sender {
//[HBCommonAlertMessage showAccurateProgresssWithMessage:@"哈哈哈" inView:self.view
// ];


    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    hud.labelText = @"哈哈哈";
    hud.mode = MBProgressHUDModeDeterminate;
    hud.removeFromSuperViewOnHide = YES;
    [hud showWhileExecuting:@selector(myTask) onTarget:self withObject:nil animated:YES];

}

-(void)dispanchTimerWithTime:(int)time Block:(void(^)(void))block
{
    dispatch_time_t tim = dispatch_time(DISPATCH_TIME_NOW,(int64_t)(time*NSEC_PER_SEC));
    dispatch_after(tim,dispatch_get_main_queue(), ^
                   {
                       block();
                   });
}
- (IBAction)success:(id)sender {
    [HBCommonAlertMessage showSuccessWithMessage:@"哈哈哈" inView:self.view];
}
- (IBAction)failure:(id)sender {
    [HBCommonAlertMessage showErrorWithMessage:@"哈哈哈" inView:self.view];
}


@end
