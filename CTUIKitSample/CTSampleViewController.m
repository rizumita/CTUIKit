//
//  CTSampleViewController.m
//  CTUIKit
//
//  Created by 和泉田 領一 on 12/08/26.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "CTSampleViewController.h"
#import "CTNetworkActivityManager.h"

@interface CTSampleViewController ()

@end

@implementation CTSampleViewController
@synthesize networkActivityCountLabel;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    [[CTNetworkActivityManager sharedManage] addObserver:self forKeyPath:@"count" options:NSKeyValueObservingOptionNew context:NULL];
}

- (void)viewDidUnload
{
    [self setNetworkActivityCountLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (void)dealloc {
    [[CTNetworkActivityManager sharedManage] removeObserver:self forKeyPath:@"count"];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change
                       context:(void *)context
{
    if ([object isKindOfClass:[CTNetworkActivityManager class]] && [keyPath isEqualToString:@"count"]) {
        self.networkActivityCountLabel.text = [NSString stringWithFormat:@"%d", [CTNetworkActivityManager sharedManage].count];
    }
}

- (IBAction)networkActivityManagerIncrementButtonTapped:(id)sender {
    [[CTNetworkActivityManager sharedManage] increment];
}

- (IBAction)networkActivityManagerDecrementButtonTapped:(id)sender {
    [[CTNetworkActivityManager sharedManage] decrement];
}

@end
