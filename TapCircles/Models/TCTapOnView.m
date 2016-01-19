//
//  TCTapOnView.m
//  TapCircles
//
//  Created by Rafael Ferreira on 1/18/16.
//  Copyright © 2016 Data Empire. All rights reserved.
//

#import "TCTapOnView.h"

@implementation TCTapOnView

- (id)initWithColor:(UIColor *)color OnPoint:(CGPoint)point {
    self = [super init];
    
    if (self) {
        self.color = color;
        self.point = point;
    }
    
    return self;
}

+ (CGFloat)generateRandomAlpha{
    CGFloat alpha = (float)(rand() % 100) / 100;
    
    return alpha;
}

+ (CGFloat)generateRandomColor {
    CGFloat color = (float)(rand() % 100) / 100;
    
    return color;
}

+ (UIColor *)generateUIColor {
    return [UIColor colorWithRed:[self generateRandomColor] green:[self generateRandomColor] blue:[self generateRandomColor] alpha:[self generateRandomAlpha]];
}

@end