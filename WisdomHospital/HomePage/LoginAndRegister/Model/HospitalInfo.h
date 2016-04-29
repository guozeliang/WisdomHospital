/**
 *
 *  HospitalInfo.h
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
 * 功能说明：医院实体
 *
 * @author:guozeliang
 * @DATE:2016-04-28 @TIME: 下午14:30:00
 */

@interface HospitalInfo : NSObject

//医院名称
@property (nonatomic,copy) NSString *name;
//医院ID
@property (nonatomic,copy) NSString *hospitalId;

/**
 *
 * 功能说明：初始化
 *
 * @param: dict 用户数据
 * @author:guozeliang
 * @DATE:2016-04-28 @TIME: 下午14:30:00
 */
+ (instancetype)modelWithDict:(NSDictionary *)dict;

@end
