//
//  SLInspireKit.h
//  InspireKitDemo
//
//  Created by Sam Jarman on 3/06/15.
//  Copyright (c) 2015 Sam Jarman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface SLInspireKit : NSObject <AVAudioPlayerDelegate>

- (id)initWithTargetView:(UIView *)targetView;
- (void)inspire;

@end
