/**
 *
 *  BaseRequest.h
 *
 *  @WisdomHospital
 *
 *  @author:guozeliang
 *  @DATE:2016-04-28 @TIME: 上午10:30:00
 *  @Copyright (c) 2016年 心医国际信息科技（西安）有限公司. All rights reserved.
 *
 */

#import <Foundation/Foundation.h>
#import <MJExtension.h>

/**
 *
 * 功能说明：所有网络请求的基类
 *
 * @author:guozeliang
 * @DATE:2016-04-28 @TIME: 下午14:30:00
 */
@interface BaseRequest : NSObject

/**
 *  ASE加密
 *
 *  @param string 要加密的字符串
 *  @return 加密过后的字符串
 *
 *  @author:guozeliang
 *  @DATE:2016-04-28 @TIME: 下午10:30:00
 */
+ (NSString * )encrypt:(NSString * )string;

/**
 *  正则判断手机号码地址格式
 *
 *  @param mobileNum 手机号
 *  电信号段:133/153/180/181/189/177
 *  联通号段:130/131/132/155/156/185/186/145/176
 *  移动号段:134/135/136/137/138/139/150/151/152/157/158/159/182/183/184/187/188/147/178
 *  虚拟运营商:170
 *  @return 是否符合标准
 *
 *  @author:guozeliang
 *  @DATE:2016-04-28 @TIME: 下午10:30:00
 */
+ (BOOL)isMobileNumber:(NSString *)mobileNum;

@end
