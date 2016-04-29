//
//  HeaderDefines.h
//  WisdomHospital
//
//  Created by SXTJ on 16/4/27.
//  Copyright © 2016年 SXTJ. All rights reserved.
//

#ifndef HeaderDefines_h
#define HeaderDefines_h

#define WS(weakSelf)  __weak __typeof(&*self)weakSelf = self

#ifdef DEBUG
    # define DLog(fmt, ...) NSLog((@"[函数名:%s]" "[行号:%d]" fmt),__FUNCTION__, __LINE__, ##__VA_ARGS__);
#else
    #define DLog(...);
#endif

//判断是否IOS5
#define ISIPHONE5 [UIScreen mainScreen].bounds.size.height > 500

//宏定义屏幕的高度为适配做方便
#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height
#define CHAT_VIEW_HEIGHT [UIScreen mainScreen].bounds.size.height-64

//-----------UI-Macro Definination---------//
#define RGBCOLOR(r,g,b) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:1]
#define RGBACOLOR(r,g,b,a) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:(a)]
#define HEXCOLOR(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

//标题自定义
#define BGCOLOR RGBACOLOR(240, 244, 255, 1.000f);
#define TXTCOLOR RGBCOLOR(250,181,77);
#define NAVCOLOR HEXCOLOR(0x986157);

/**
 *  MBProgressHUD多长时间消息
 */
#define HUD_DELAY  1.5
#define BadNetwork @"Bad Net Status"

/**
 *  登录成功后用于归档的宏
 *
 *  用户信息存到本地
 *  NSData *userData = [NSKeyedArchiver archivedDataWithRootObject:user];
 *  NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
 *  [defaults setObject:userData forKey:CUR_USER];
 *
 *  从本地读取用户信息
 *  NSData *tmpdata = [defaults objectForKey:CUR_USER];
 *  User *user1 = [NSKeyedUnarchiver unarchiveObjectWithData:tmpdata];
 */
#define CUR_USER @"CUR_USER_INFO"

#define CUR_HOSPITAL @"CUR_HOSPITAL_INFO"

#define USER_D [NSUserDefaults standardUserDefaults]

/**
 *  接口宏定义
 */

#define STRING_CONNECT(IP, COMMON_URL)  [NSString stringWithFormat:@"%@%@",IP,COMMON_URL]


#ifdef DEBUG
    #define SERVER_IP @"http://61.178.71.30:80"
#else
    #define SERVER_IP @"http://61.178.71.30:80"
#endif

/**
 *  版本号
 */
#define CUR_BAN_BEN  [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"]

/**
 *  共同接口后缀
 */
#define BASE_URL  STRING_CONNECT(SERVER_IP,@"/phpatient/app/appservice?querystr=")

/**
 *  登录接口(GET)
 *
 *  @param aUserName  用户名
 *  @param aPassword  MD5加密后的密码
 *  @param aVersionNo 版本号
 *
 */
#define APP_LOGIN(aUserName,aPassword,aVersionNo) [NSString stringWithFormat:@"/app/phpatientmain/login?aUserName=%@&aPassword=%@&aVersionNo=%@&aClientType=0",aUserName,aPassword,CUR_BAN_BEN]




#endif /* HeaderDefines_h */
