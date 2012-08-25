//
//  CTNetworkActivityManager.m
//  CTUIKit
//
//  Created by 和泉田 領一 on 12/08/26.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "CTNetworkActivityManager.h"

@implementation CTNetworkActivityManager
@synthesize count = _count;


+ (CTNetworkActivityManager *)sharedManage {
    static CTNetworkActivityManager *_instance = nil;

    @synchronized (self) {
        if (_instance == nil) {
            _instance = [[self alloc] init];
        }
    }

    return _instance;
}

- (void)increment {
    @synchronized (self) {
        [self willChangeValueForKey:@"count"];
        _count++;
        [self didChangeValueForKey:@"count"];

        [self changeNetworkActivity];
    }
}

- (void)decrement {
    @synchronized (self) {
        if (self.count > 0) {
            [self willChangeValueForKey:@"count"];
            _count--;
            [self didChangeValueForKey:@"count"];

            [self changeNetworkActivity];
        }
    }
}

- (void)changeNetworkActivity {
    BOOL isAccessing = _count > 0;
    [UIApplication sharedApplication].networkActivityIndicatorVisible = isAccessing;
}

@end
