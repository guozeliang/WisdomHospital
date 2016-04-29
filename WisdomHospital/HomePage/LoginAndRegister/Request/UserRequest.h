/**
 *
 *  UserRequest.h
 *
 *  @WisdomHospital
 *
 *  @author:guozeliang
 *  @DATE:2016-04-21 @TIME: 上午10:30:00
 *  @Copyright (c) 2016年 心医国际信息科技（西安）有限公司. All rights reserved.
 *
 */

#import "BaseRequest.h"
#import "AFNetworkReachabilityManager.h"
#import "HeaderDefines.h"

/**
 *
 * 功能说明：用户登录、注册、忘记密码 业务逻辑层
 *
 * @author:guozeliang
 * @DATE:2016-04-27 @TIME: 下午14:30:00
 */


@interface UserRequest : BaseRequest

/**
 *  获取验证码
 *
 *  @param cdicInfo 请求参数
 *  @param complete 回调
 *
 * @author:guozeliang
 * @DATE:2016-04-27 @TIME: 下午14:30:00
 *
 */
+(void)getCode:(NSDictionary *)cdicInfo complete:(void(^)(NSDictionary * dictionary))complete;

/**
 *  忘记密码---修改密码 (PUT)
 *
 *  @param cdicInfo 请求参数
 *  @param complete 回调
 *
 * @author:guozeliang
 * @DATE:2016-04-27 @TIME: 下午14:30:00
 *
 */
+(void)changePSW:(NSDictionary *)cdicInfo complete:(void(^)(NSDictionary * dictionary))complete;

/**
 *  注册
 *
 *  @param cdicInfo 请求参数
 *  @param complete 回调
 *
 * @author:guozeliang
 * @DATE:2016-04-27 @TIME: 下午14:30:00
 *
 */
+(void)regist:(NSDictionary *)cdicInfo complete:(void(^)(NSDictionary * dictionary))complete;

/**
 *  登录
 *
 *  @param cdicInfo 请求参数
 *  @param complete 回调
 *
 * @author:guozeliang
 * @DATE:2016-04-27 @TIME: 下午14:30:00
 *
 */
+(void)login:(NSDictionary *)cdicInfo complete:(void(^)(NSDictionary * dictionary))complete;

@end
