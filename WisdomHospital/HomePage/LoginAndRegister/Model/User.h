/**
 *
 *  User.h
 *
 *  @WisdomHospital
 *
 *  @author:guozeliang
 *  @DATE:2016-04-21 @TIME: 上午10:30:00
 *  @Copyright (c) 2016年 心医国际信息科技（西安）有限公司. All rights reserved.
 *
 */

#import <Foundation/Foundation.h>
#import <MJExtension.h>

/**
 *
 * 功能说明：用户实体
 *
 * @author:guozeliang
 * @DATE:2016-04-27 @TIME: 下午14:30:00
 */
@interface User : NSObject

//会员ID
@property (nonatomic,copy) NSString *memberId;
//登录密码
@property (nonatomic,copy) NSString *password;
//对应HIS中的病人ID
@property (nonatomic,copy) NSString *patientId;
//appServer中的t_patient表中的主键
@property (nonatomic,copy) NSString *patientCode;
//头像地址
@property (nonatomic,copy) NSString *photoPath;
//用户名
@property (nonatomic,copy) NSString *username;
//昵称
@property (nonatomic,copy) NSString *name;
//医院编号
@property (nonatomic,copy) NSString *hospitalId;

/**
 *
 * 功能说明：初始化
 *
 * @param: dict 用户数据
 * @author:guozeliang
 * @DATE:2016-04-27 @TIME: 下午14:30:00
 */
+ (instancetype)modelWithDict:(NSDictionary *)dict;

@end
