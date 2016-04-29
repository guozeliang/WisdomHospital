/**
 *
 *  ForgetView.h
 *
 *  @WisdomHospital
 *
 *  @author:guozeliang
 *  @DATE:2016-04-21 @TIME: 上午10:30:00
 *  @Copyright (c) 2016年 心医国际信息科技（西安）有限公司. All rights reserved.
 *
 */

#import <UIKit/UIKit.h>

/**
 *
 * 功能说明：忘记密码视图
 *
 * @author:guozeliang
 * @DATE:2016-04-27 @TIME: 下午14:30:00
 */

@interface ForgetView : UIView

@property (weak, nonatomic) IBOutlet UIView *testView;
@property (weak, nonatomic) IBOutlet UIScrollView *myScrollView;
@property (weak, nonatomic) IBOutlet UITextField *textAcount;
@property (weak, nonatomic) IBOutlet UITextField *textCode;
@property (weak, nonatomic) IBOutlet UITextField *textPassword;
@property (weak, nonatomic) IBOutlet UIButton *btnCommit;

@end
