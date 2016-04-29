/**
 *
 *  User.m
 *
 *  @WisdomHospital
 *
 *  @author:guozeliang
 *  @DATE:2016-04-21 @TIME: 上午10:30:00
 *  @Copyright (c) 2016年 心医国际信息科技（西安）有限公司. All rights reserved.
 *
 */


#import "User.h"

/**
 *
 * 功能说明：用户实体
 *
 * @author:guozeliang
 * @DATE:2016-04-27 @TIME: 下午14:30:00
 */

@implementation User
/**
 *  实现归档解档不用再编写恶心的encodeWithCoder:和initWithCoder:了
 *
 */
MJCodingImplementation

/**
 *
 * 功能说明：初始化
 *
 * @param: dict 用户数据
 * @author:guozeliang
 * @DATE:2016-04-27 @TIME: 下午14:30:00
 */
+ (instancetype)modelWithDict:(NSDictionary *)dict{
    User *model = [[self alloc] init];
    [model setKeyValues:dict];
    return model;
}

@end
