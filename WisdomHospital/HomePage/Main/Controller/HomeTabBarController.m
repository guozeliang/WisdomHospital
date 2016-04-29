/**
 *
 *  HomeTabBarController.m
 *
 *  @WisdomHospital
 *
 *  @author:guozeliang
 *  @DATE:2016-04-21 @TIME: 上午10:30:00
 *  @Copyright (c) 2016年 心医国际信息科技（西安）有限公司. All rights reserved.
 *
 */

#import "HomeTabBarController.h"
#import "HeaderDefines.h"

/**
 *
 * 功能说明：主控制器 登录成功后 作为程序的rootVC
 *
 * @author:guozeliang
 * @DATE:2016-04-27 @TIME: 下午14:30:00
 */
@interface HomeTabBarController ()

@end

@implementation HomeTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tabBar.tintColor = NAVCOLOR;
    
    DLog(@"%@",BASE_URL);
//    DLog(@"%@",APP_LOGIN);
    
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
