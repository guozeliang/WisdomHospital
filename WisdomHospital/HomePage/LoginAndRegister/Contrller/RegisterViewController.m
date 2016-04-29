/**
 *
 *  RegisterViewController.m
 *
 *  @WisdomHospital
 *
 *  @author:guozeliang
 *  @DATE:2016-04-21 @TIME: 上午10:30:00
 *  @Copyright (c) 2016年 心医国际信息科技（西安）有限公司. All rights reserved.
 *
 */

#import "RegisterViewController.h"
#import "MLInputDodger.h"
#import "RegisterView.h"

/**
 *
 * 功能说明：新用户注册控制层
 *
 * @author:guozeliang
 * @DATE:2016-04-27 @TIME: 下午14:30:00
 */

@interface RegisterViewController ()<UIScrollViewDelegate>

@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"注册";
    UITapGestureRecognizer *tapG = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tap)];
    [self.view addGestureRecognizer:tapG];
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    //because `self.automaticallyAdjustsScrollViewInsets==YES` , the contentInset have be set now.
    //when `registerAsDodgeViewForMLInputDodger`,the`originalContentInsetAsDodgeViewForMLInputDodger` would be
    //set with the current cotentInset
    RegisterView *tmpView = (RegisterView*)self.view;
    tmpView.shiftHeightAsDodgeViewForMLInputDodger = 44.0f+5.0f;
    [tmpView registerAsDodgeViewForMLInputDodger];
}

#pragma mark - event
/**
 *  点击界面时响应的事件 用于使用键盘 消失
 *
 * @author:guozeliang
 * @DATE:2016-04-27 @TIME: 下午14:30:00
 */
- (void)tap{
    [self.view endEditing:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UIScrollViewDelegate

//- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
//    
//    NSLog(@"%@",scrollView);
////    [scrollView endEditing:YES];
//
//}// any offset changes


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
