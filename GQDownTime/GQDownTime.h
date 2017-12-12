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
@property(nonatomic,copy)EndTime endtime;
@property(nonatomic,copy)WorkTime work;

+(instancetype)sharedGQDownTime;
-(void)initWithTime:(int)time;
@end
