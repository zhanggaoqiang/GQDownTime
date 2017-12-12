////
////  GQDownTime.m
////  CarShare
////
////  Created by 张高强 on 2017/12/12.
////  Copyright © 2017年 eamon. All rights reserved.
////
//#import "GQDownTime.h"
//@implementation GQDownTime
//static id _instance;
//+(instancetype)sharedGQDownTime{
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^{
//        _instance = [[self alloc] init];
//    });
//    return _instance;
//}
//-(void)initWithTime:(int)time{
//    //设置倒计时时间
//    //通过检验发现，方法调用后，timeout会先自动-1，所以如果从15秒开始倒计时timeout应该写16
//    //__block 如果修饰指针时，指针相当于弱引用，指针对指向的对象不产生引用计数的影响
//    __block int timeout = time;
//    //获取全局队列
//    dispatch_queue_t global = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
//    
//    //创建一个定时器，并将定时器的任务交给全局队列执行(并行，不会造成主线程阻塞)
//    dispatch_source_t timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, global);
//    
//    // 设置触发的间隔时间
//    dispatch_source_set_timer(timer, DISPATCH_TIME_NOW, 1.0 * NSEC_PER_SEC, 0 * NSEC_PER_SEC);
//    //1.0 * NSEC_PER_SEC  代表设置定时器触发的时间间隔为1s
//    //0 * NSEC_PER_SEC    代表时间允许的误差是 0s
//    
//    //block内部 如果对当前对象的强引用属性修改 应该使用__weak typeof(self)weakSelf 修饰  避免循环调用
//    
//    //设置定时器的触发事件
//    dispatch_source_set_event_handler(timer, ^{
//        
//        //倒计时  刷新button上的title ，当倒计时时间为0时，结束倒计时
//        
//        //1. 每调用一次 时间-1s
//        timeout --;
//        
//        //2.对timeout进行判断时间是停止倒计时，还是修改button的title
//        if (timeout <= 0) {
//            self.endtime();
//             dispatch_source_cancel(timer);
//        }else {
//            
//            self.work(timeout);
//        }
//    });
//    
//    dispatch_resume(timer);
//}
//
//@end

