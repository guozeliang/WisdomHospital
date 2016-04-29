/**
 *
 *  LoginView.m
 *
 *  @WisdomHospital
 *
 *  @author:guozeliang
 *  @DATE:2016-04-21 @TIME: 上午10:30:00
 *  @Copyright (c) 2016年 心医国际信息科技（西安）有限公司. All rights reserved.
 *
 */

#import "LoginView.h"
#import "ChameleonFramework/Chameleon.h"

/**
 *
 * 功能说明：用户登录视图
 *
 * @author:guozeliang
 * @DATE:2016-04-27 @TIME: 下午14:30:00
 */

@implementation LoginView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)awakeFromNib{
    CGFloat height = CGRectGetHeight(self.textAcount.frame);
    UIView *aLeftView = [[UIView alloc]initWithFrame:CGRectMake(0.0, 0.0, 32, height)];
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(5.0, 7.0, 30, height-14.0)];
    imageView.image = [UIImage imageNamed:@"man.png"];
    [aLeftView addSubview:imageView];
    self.textAcount.leftView = aLeftView;
    self.textAcount.leftViewMode=UITextFieldViewModeAlways;
    
    UIView *pLeftView = [[UIView alloc]initWithFrame:CGRectMake(0.0, 0.0, 32, height)];
    UIImageView *pImageView = [[UIImageView alloc]initWithFrame:CGRectMake(5.0, 7.0, 30, height-14.0)];
    pImageView.image = [UIImage imageNamed:@"lock.png"];
    [pLeftView addSubview:pImageView];
    self.textPassword.leftView = pLeftView;
    self.textPassword.leftViewMode=UITextFieldViewModeAlways;

    self.headerImage.layer.masksToBounds = YES;
    self.headerImage.layer.cornerRadius = CGRectGetWidth(self.headerImage.frame)/2.0;
    self.headerImage.layer.borderColor = FlatCoffee.CGColor;
    self.headerImage.layer.borderWidth = 2.0;
    
    self.btnLogin.layer.cornerRadius = 5.0;
//    NSArray *colors = @[FlatYellow,FlatYellowDark,FlatOrange,FlatOrangeDark];
//    self.backgroundColor = [UIColor colorWithGradientStyle:UIGradientStyleTopToBottom withFrame:self.bounds andColors:colors];
//    self.backgroundColor = FlatYellow;
    
}


@end
