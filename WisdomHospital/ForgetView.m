/**
 *
 *  ForgetView.m
 *
 *  @WisdomHospital
 *
 *  @author:guozeliang
 *  @DATE:2016-04-21 @TIME: 上午10:30:00
 *  @Copyright (c) 2016年 心医国际信息科技（西安）有限公司. All rights reserved.
 *
 */

#import "ForgetView.h"

/**
 *
 * 功能说明：忘记密码视图
 *
 * @author:guozeliang
 * @DATE:2016-04-27 @TIME: 下午14:30:00
 */

@implementation ForgetView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
//- (void)drawRect:(CGRect)rect {
//    // Drawing code
////    CGRect frame = self.testView.frame;
////    frame.size.height = self.bounds.size.height + 64;
//    self.testView.frame = [[UIScreen mainScreen]bounds];
//    NSLog(@"%@",NSStringFromCGRect(self.testView.frame));
//    NSLog(@"%@",NSStringFromCGRect(self.bounds));
//    NSLog(@"%@",NSStringFromCGRect(self.testView.frame));
//}


- (void)awakeFromNib{
    
    UILabel *labAcount = [[UILabel alloc]initWithFrame:CGRectMake(0.0, 0.0, 60, 30)];
    labAcount.text = @" 手机号:";
    labAcount.font = [UIFont systemFontOfSize:16.0];
    //    labAcount.backgroundColor = [UIColor redColor];
    labAcount.textAlignment = NSTextAlignmentCenter;
    [labAcount sizeToFit];
    self.textAcount.leftView = labAcount;
    self.textAcount.leftViewMode = UITextFieldViewModeAlways;
    
    UILabel *labCode = [[UILabel alloc]initWithFrame:CGRectMake(0.0, 0.0, 60, 30)];
    labCode.text = @" 激活码:";
    labCode.font = [UIFont systemFontOfSize:16.0];
    //    labSure.backgroundColor = [UIColor redColor];
    labCode.textAlignment = NSTextAlignmentCenter;
    [labCode sizeToFit];
    self.textCode.leftView = labCode;
    self.textCode.leftViewMode = UITextFieldViewModeAlways;
    
    UIButton *btnCode = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btnCode.frame = CGRectMake(0.0, 0.0, 100, 44);
    btnCode.backgroundColor = [UIColor colorWithRed:250.0f/255.0f green:85.0f/255.0f blue:147.0f/255.0f alpha:1.0];
    [btnCode setTitle:@"激活码" forState:UIControlStateNormal];
    [btnCode setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    btnCode.layer.cornerRadius = 5.0;
    btnCode.layer.masksToBounds = YES;
    
    self.textCode.rightView = btnCode;
    self.textCode.rightViewMode = UITextFieldViewModeAlways;
    
    UILabel *labPassword = [[UILabel alloc]initWithFrame:CGRectMake(0.0, 0.0, 60, 30)];
    labPassword.text = @" 密码:";
    labPassword.font = [UIFont systemFontOfSize:16.0];
    //    labPassword.backgroundColor = [UIColor redColor];
    labPassword.textAlignment = NSTextAlignmentCenter;
    [labPassword sizeToFit];
    self.textPassword.leftView = labPassword;
    self.textPassword.leftViewMode = UITextFieldViewModeAlways;
    
    self.btnCommit.layer.masksToBounds = YES;
    self.btnCommit.layer.cornerRadius = 5.0;
}

@end
