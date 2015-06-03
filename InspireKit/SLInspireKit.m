//
//  SLInspireKit.m
//  InspireKitDemo
//
//  Created by Sam Jarman on 3/06/15.
//  Copyright (c) 2015 Sam Jarman. All rights reserved.
//

#import "SLInspireKit.h"

@interface SLInspireKit ()
@property (nonatomic, strong) AVAudioPlayer *soundPlayer;
@property (nonatomic, strong) UIView *view;
@property (nonatomic, strong) UIImageView *imageView;
@end

@implementation SLInspireKit

- (id)initWithTargetView:(UIView *)targetView {
    self = [super init];
    if (self) {
        self.view = targetView;
    }
    return self;
}
- (void)inspire {
    [self playRandomSound];
    [self showRandomImage];

}

- (void)playRandomSound {
    AVAudioSession *session = [AVAudioSession sharedInstance];
    [session setCategory:AVAudioSessionCategoryPlayback error:nil];
    
    NSError *error;
    
    NSString *musicFileName = [NSString stringWithFormat:@"shia-sound-%d.aiff", arc4random_uniform(8)];
    NSString *path = [NSString stringWithFormat:@"%@/%@", [[NSBundle mainBundle] resourcePath], musicFileName];
    NSURL *soundUrl = [NSURL fileURLWithPath:path];
    
    self.soundPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:soundUrl error:&error];
    self.soundPlayer.delegate = self;
    [self.soundPlayer setVolume:1.0];
    [self.soundPlayer prepareToPlay];
    
    [self.soundPlayer play];
}

- (void)showRandomImage {
    NSString *imageFileName = [NSString stringWithFormat:@"shia-image-%d", arc4random_uniform(17)];
    NSLog(@"%@", imageFileName);
    self.imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:imageFileName]];
    //TODO: make his legs pin to the bottom, resize to fit inside window.
    [self.view addSubview:self.imageView];
}

- (void)audioPlayerDidFinishPlaying:(AVAudioPlayer *)player successfully:(BOOL)flag {
    [self.imageView removeFromSuperview];
}

- (void)audioPlayerDecodeErrorDidOccur:(AVAudioPlayer *)player error:(NSError *)error {
    NSLog(@"Failed playing sound");
}

@end
