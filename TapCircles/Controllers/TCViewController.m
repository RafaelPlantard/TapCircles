//
//  ViewController.m
//  TapCircles
//
//  Created by Rafael Ferreira on 1/18/16.
//  Copyright © 2016 Data Empire. All rights reserved.
//

#import "TCViewController.h"
#import "TCTapCircleView.h"

@interface TCViewController ()

@end

@implementation TCViewController

- (void)loadView {
    TCTapCircleView *circleView = [TCTapCircleView new];
    
    circleView.backgroundColor = [UIColor whiteColor];
    
    self.view = circleView;
}

@end
