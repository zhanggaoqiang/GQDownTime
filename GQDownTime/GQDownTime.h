//
//  GQDownTime.h
//  CarShare
//
//  Created by 张高强 on 2017/12/12.
//  Copyright © 2017年 eamon. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^EndTime)(void);
typedef void(^WorkTime)(NSInteger work);
@interface GQDownTime : NSObject
/**
 倒计时结束的回调
 */
@property(nonatomic,copy)EndTime endtime;
/**
 正在倒计时的回调
 */
@property(nonatomic,copy)WorkTime work;

/**
 创建单例

 @return
 */
+(instancetype)sharedGQDownTime;
/**
 传入时间

 @param time
 */
-(void)initWithTime:(int)time;



@end
