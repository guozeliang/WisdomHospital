/**
 *
 *  ForgetController.m
 *
 *  @WisdomHospital
 *
 *  @author:guozeliang
 *  @DATE:2016-04-21 @TIME: 上午10:30:00
 *  @Copyright (c) 2016年 心医国际信息科技（西安）有限公司. All rights reserved.
 *
 */

#import "ForgetController.h"
#import "MLInputDodger.h"
#import "ForgetView.h"

/**
 *
 * 功能说明：忘记密码控制层
 *
 * @author:guozeliang
 * @DATE:2016-04-27 @TIME: 下午14:30:00
 */

@interface ForgetController ()

@end

@implementation ForgetController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    NSLog(@"%@",NSStringFromCGRect(self.scr.frame));

//    NSLog(@"%@",NSStringFromCGRect(self.myScrollView.frame));
//    NSLog(@"%@",NSStringFromCGRect(self.testView.frame));
    
    self.navigationItem.title = @"忘记密码";
    UITapGestureRecognizer *tapG = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tap)];
    [self.view addGestureRecognizer:tapG];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    ForgetView *tmpView = (ForgetView*)self.view;
    tmpView.shiftHeightAsDodgeViewForMLInputDodger = 44.0f+5.0f;
    [tmpView registerAsDodgeViewForMLInputDodger];
}

#pragma mark - event
/**
 *  点击界面时响应的事件 用于使用键盘 消失
 *
 *  @author:guozeliang
 *  @DATE:2016-04-21 @TIME: 上午10:30:00
 */
- (void)tap{
    [self.view endEditing:YES];
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

@end
