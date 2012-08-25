//
//  CTSampleViewController.h
//  CTUIKit
//
//  Created by 和泉田 領一 on 12/08/26.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CTSampleViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *networkActivityCountLabel;
- (IBAction)networkActivityManagerIncrementButtonTapped:(id)sender;
- (IBAction)networkActivityManagerDecrementButtonTapped:(id)sender;

@end
