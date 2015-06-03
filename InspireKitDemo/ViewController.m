//
//  ViewController.m
//  InspireKitDemo
//
//  Created by Sam Jarman on 3/06/15.
//  Copyright (c) 2015 Sam Jarman. All rights reserved.
//

#import "ViewController.h"
#import "SLInspireKit.h"
@interface ViewController ()
@property (nonatomic, retain) SLInspireKit *kit;
@end
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.kit = [[SLInspireKit alloc] initWithTargetView:self.view];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)inspireMe:(id)sender {
    [self.kit inspire];
}

@end
