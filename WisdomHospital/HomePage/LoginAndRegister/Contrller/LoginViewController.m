/**
 *
 *  LoginViewController.m
 *
 *  @WisdomHospital
 *
 *  @author:guozeliang
 *  @DATE:2016-04-21 @TIME: 上午10:30:00
 *  @Copyright (c) 2016年 心医国际信息科技（西安）有限公司. All rights reserved.
 *
 */

#import "LoginViewController.h"
#import "UIView+MLInputDodger.h"
#import "HomeTabBarController.h"
#import "UserRequest.h"
#import "LoginView.h"
#import "User.h"

/**
 *
 * 功能说明：用户登录控制层
 *
 * @author:guozeliang
 * @DATE:2016-04-27 @TIME: 下午14:30:00
 */

@interface LoginViewController ()<UIAlertViewDelegate>

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UITapGestureRecognizer *tapG = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tap)];
    [self.view addGestureRecognizer:tapG];
    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
    
    LoginView *tmpView = (LoginView*)self.view;
    
    /**
     *  读取用户信息显示到登录界面上
     */
    NSData *userData = [USER_D objectForKey:CUR_USER];
    User *user = [NSKeyedUnarchiver unarchiveObjectWithData:userData];
    tmpView.textAcount.text = user.username;
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = YES;
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    self.view.shiftHeightAsDodgeViewForMLInputDodger = 80.0f;
    [self.view registerAsDodgeViewForMLInputDodger];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/**
 *  点击登录按钮的响应事件
 *
 *  @param sender 登录按钮
 *  @author:guozeliang
 *  @DATE:2016-04-27 @TIME: 下午14:30:00
 *
 */
- (IBAction)btnLoginClick:(UIButton *)sender {
    //取消键盘
    [self tap];
    WS(weakSelf);
    //使登录按钮不可用
    [self showHUDWithText:@""];
    LoginView *tmpView = (LoginView*)self.view;
    if (![self checkAcount:tmpView]) {
        [weakSelf hideHud];
        return;
    }
    //登录接口
    [UserRequest login: @{@"aUserName":tmpView.textAcount.text,@"aPassword": tmpView.textPassword.text} complete:^(NSDictionary *dictionary){
        DLog(@"%@",dictionary);
        sender.enabled = YES;
        if ([dictionary[@"resultStatus"]integerValue] == 1) {
            HomeTabBarController *homeVC = [self.storyboard instantiateViewControllerWithIdentifier:@"HomeTabBarController"];
            // 切换控制器
            UIWindow *window = [[UIApplication sharedApplication] keyWindow];
            window.rootViewController = homeVC;
            [weakSelf hideHud];

        }else{
            [weakSelf showHUDWithText:dictionary[@"info"] delay:HUD_DELAY];
        }
    }];
    
    
    
}

/**
 *  检查用户名密码填写是否完整
 *
 *  @param view 当前视图
 *  @return 是否完整 YES完整  NO 不完整
 *  @author:guozeliang
 *  @DATE:2016-04-28 @TIME: 下午09:30:00
 *
 */
- (BOOL)checkAcount:(LoginView*)view{
    
    NSString *errorStr = nil;
    UIAlertController *alter = [UIAlertController alertControllerWithTitle:@"提醒" message:errorStr preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *action = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleCancel handler:^(UIAlertAction * action) {
    }];
    [alter addAction:action];
    
    if (view.textAcount.text.length != 11) {
        errorStr = @"电话号码位数不正确!";
        alter.message = errorStr;
        [self presentViewController:alter animated:YES completion:nil];
        return NO;
    }
    BOOL isMobileNum = [UserRequest isMobileNumber:view.textAcount.text];
    if (!isMobileNum) {
        errorStr = @"电话号码有误!";
        alter.message = errorStr;
        [self presentViewController:alter animated:YES completion:nil];
        return NO;
    }
    
    if (view.textPassword.text.length == 0) {
        errorStr = @"密码不能为空!";
        alter.message = errorStr;
        [self presentViewController:alter animated:YES completion:nil];
        return NO;
    }
    
    return isMobileNum;
    
}

#pragma mark - tap event

/**
 *  点击界面时响应的事件 用于使用键盘 消失
 *
 *  @author:guozeliang
 *  @DATE:2016-04-27 @TIME: 下午14:30:00
 *
 */
- (void)tap{
    
    [self.view endEditing:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
