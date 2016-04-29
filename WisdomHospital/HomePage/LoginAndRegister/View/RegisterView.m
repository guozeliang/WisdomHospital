/**
 *
 *  RegisterView.m
 *
 *  @WisdomHospital
 *
 *  @author:guozeliang
 *  @DATE:2016-04-21 @TIME: 上午10:30:00
 *  @Copyright (c) 2016年 心医国际信息科技（西安）有限公司. All rights reserved.
 *
 */

#import "RegisterView.h"

/**
 *
 * 功能说明：用户注册视图
 *
 * @author:guozeliang
 * @DATE:2016-04-27 @TIME: 下午14:30:00
 */

@implementation RegisterView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)awakeFromNib{
    
    UILabel *labAcount = [[UILabel alloc]initWithFrame:CGRectMake(0.0, 0.0, 60, 30)];
    labAcount.text = @" 手机号:";
    labAcount.font = [UIFont systemFontOfSize:16.0];
//    labAcount.backgroundColor = [UIColor redColor];
    labAcount.textAlignment = NSTextAlignmentCenter;
    [labAcount sizeToFit];
    self.textAcount.leftView = labAcount;
    self.textAcount.leftViewMode = UITextFieldViewModeAlways;
    
    UILabel *labPassword = [[UILabel alloc]initWithFrame:CGRectMake(0.0, 0.0, 60, 30)];
    labPassword.text = @" 密码:";
    labPassword.font = [UIFont systemFontOfSize:16.0];
//    labPassword.backgroundColor = [UIColor redColor];
    labPassword.textAlignment = NSTextAlignmentCenter;
    [labPassword sizeToFit];
    self.textPassword.leftView = labPassword;
    self.textPassword.leftViewMode = UITextFieldViewModeAlways;
    
    UILabel *labSure = [[UILabel alloc]initWithFrame:CGRectMake(0.0, 0.0, 60, 30)];
    labSure.text = @" 确认:";
    labSure.font = [UIFont systemFontOfSize:16.0];
//    labSure.backgroundColor = [UIColor redColor];
    labSure.textAlignment = NSTextAlignmentCenter;
    [labSure sizeToFit];
    self.textSure.leftView = labSure;
    self.textSure.leftViewMode = UITextFieldViewModeAlways;
    
    UILabel *labCode = [[UILabel alloc]initWithFrame:CGRectMake(0.0, 0.0, 60, 30)];
    labCode.text = @" 验证码:";
    labCode.font = [UIFont systemFontOfSize:16.0];
//    labCode.backgroundColor = [UIColor redColor];
    labCode.textAlignment = NSTextAlignmentCenter;
    [labCode sizeToFit];
    self.textCode.leftView = labCode;
    self.textCode.leftViewMode = UITextFieldViewModeAlways;
}

@end
