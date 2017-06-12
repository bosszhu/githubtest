//
//  DispatchQueueManager.h
//  xinxinLove
//
//  Created by yuntong on 2017/6/12.
//  Copyright © 2017年 yuntong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DispatchQueueManager : NSObject



- (instancetype)init UNAVAILABLE_ATTRIBUTE;
- (instancetype)new UNAVAILABLE_ATTRIBUTE;


/**
 return serial queue of default Qos
 
 @return dispatch_queue
 */
dispatch_queue_t defaultQosQueue();


/**
 return Qos serial queue
 
 @param qos Qos
 @return dispatch_queue
 */
dispatch_queue_t defaultQueueForQos(NSQualityOfService qos);
@end
