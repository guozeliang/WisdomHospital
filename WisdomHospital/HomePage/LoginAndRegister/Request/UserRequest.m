/**
 *
 *  UserRequest.m
 *
 *  @WisdomHospital
 *
 *  @author:guozeliang
 *  @DATE:2016-04-21 @TIME: 上午10:30:00
 *  @Copyright (c) 2016年 心医国际信息科技（西安）有限公司. All rights reserved.
 *
 */

#import "UserRequest.h"
#import "AFHTTPSessionManager.h"
#import "AFNetworking.h"
#import "NSString+MD5.h"
#import "User.h"
#import "HospitalInfo.h"
#import "Response.h"

/**
 *
 * 功能说明：用户登录、注册、忘记密码 业务逻辑层
 *
 * @author:guozeliang
 * @DATE:2016-04-27 @TIME: 下午14:30:00
 */

@implementation UserRequest

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
+(void)getCode:(NSDictionary *)cdicInfo complete:(void(^)(NSDictionary * dictionary))complete{
    
}

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
+(void)changePSW:(NSDictionary *)cdicInfo complete:(void(^)(NSDictionary * dictionary))complete{
    
}

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
+(void)regist:(NSDictionary *)cdicInfo complete:(void(^)(NSDictionary * dictionary))complete{
    
}

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
+(void)login:(NSDictionary *)cdicInfo complete:(void(^)(NSDictionary * dictionary))complete{
    NSString *password = [cdicInfo[@"aPassword"] MD5];
     NSString * cstrUrl = [NSString stringWithFormat:@"%@%@",BASE_URL,[self encrypt:APP_LOGIN(cdicInfo[@"aUserName"], password,cdicInfo[@"aVersionNo"])]];
    
    DLog(@"%@",APP_LOGIN(cdicInfo[@"aUserName"], password,cdicInfo[@"aVersionNo"]));
    DLog(@"%@",cstrUrl);
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    manager.responseSerializer=[AFHTTPResponseSerializer serializer];
    [manager GET:cstrUrl parameters:nil
         success:^(AFHTTPRequestOperation *operation,id responseObject) {
             DLog(@"%@",operation.responseString);
             NSData *resultData = responseObject;
             NSError * error = nil;
             NSDictionary * cdicJson = [NSJSONSerialization JSONObjectWithData:resultData options:kNilOptions error:&error];
             
             if ([cdicInfo[@"resultStatus"]integerValue] == 1) {
                 NSDictionary *userDict = cdicJson[@"data"][@"memLoginInfo"];
                 User *user = [User objectWithKeyValues:userDict];
                 /**
                  *  用户信息存到本地
                  */
                 NSData *userData = [NSKeyedArchiver archivedDataWithRootObject:user];
                 NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
                 [defaults setObject:userData forKey:CUR_USER];
                 
                 /**
                  *  医院信息存到本地
                  */
                 NSDictionary *hospitalDict = [cdicJson[@"data"][@"hospitalInfos"]firstObject];
                 HospitalInfo *hospitalInfo = [HospitalInfo objectWithKeyValues:hospitalDict];
                 NSData *hospitalData = [NSKeyedArchiver archivedDataWithRootObject:hospitalInfo];
                 [defaults setObject:hospitalData forKey:CUR_HOSPITAL];
             }
             complete(cdicJson);
         }failure:^(AFHTTPRequestOperation *operation,NSError *error) {
             
             complete(nil);
             
             DLog(@"%@",operation.description);
             DLog(@"Error: ------------->%@", error);
         }];
}

@end
