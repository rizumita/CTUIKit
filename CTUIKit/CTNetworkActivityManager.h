//
//  CTNetworkActivityManager.h
//  CTUIKit
//
//  Created by 和泉田 領一 on 12/08/26.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface CTNetworkActivityManager : NSObject

@property (nonatomic, readonly) int count;

+ (CTNetworkActivityManager *)sharedManage;

- (void)increment;

- (void)decrement;

@end
