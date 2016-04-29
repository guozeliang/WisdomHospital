/**
 *
 *  Response.h
 *
 *  @WisdomHospital
 *
 *  @author:guozeliang
 *  @DATE:2016-04-28 @TIME: 上午10:30:00
 *  @Copyright (c) 2016年 心医国际信息科技（西安）有限公司. All rights reserved.
 *
 */
#import "Response.h"

/**
 *
 * 功能说明：所有网络请求的实体类model
 *
 * @author:guozeliang
 * @DATE:2016-04-28 @TIME: 下午14:30:00
 */

@implementation Response

/**
 *
 * 功能说明：初始化
 *
 * @param: dict 用户数据
 * @author:guozeliang
 * @DATE:2016-04-28 @TIME: 下午14:30:00
 */
+ (instancetype)modelWithDict:(NSDictionary *)dict{
    Response *model = [[self alloc] init];
    [model setKeyValues:dict];
    return model;
}

@end
