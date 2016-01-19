//
//  TCTapCircleView.m
//  TapCircles
//
//  Created by Rafael Ferreira on 1/18/16.
//  Copyright © 2016 Data Empire. All rights reserved.
//

#import "TCTapCircleView.h"
#import "TCTapOnView.h"

@interface TCTapCircleView ()

- (void)registerTapGesture;

@end

@implementation TCTapCircleView

- (instancetype)init {
    self = [super init];
    if (self) {
        [self registerTapGesture];
        tappedPoints = [NSMutableArray new];
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetLineWidth(context, 2.0);
    
    int size = 25;
    
    for (TCTapOnView *tapPoint in tappedPoints) {
        CGColorRef color = tapPoint.color.CGColor;
        
        CGContextSetFillColor(context, CGColorGetComponents(color));
        
        CGPoint p = tapPoint.point;
        
        CGRect region = CGRectMake(p.x, p.y, size, size);
        
        CGContextAddEllipseInRect(context, region);
        CGContextFillEllipseInRect(context, region);
    }
    
    CGContextStrokePath(context);
}

- (void)registerTapGesture {
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapHandler:)];
    tapGesture.numberOfTouchesRequired = 1;
    
    [self addGestureRecognizer:tapGesture];
}

- (void)tapHandler:(UIGestureRecognizer *)tapGesture {
    CGPoint point = [tapGesture locationInView:self];
    
    TCTapOnView *t = [[TCTapOnView alloc] initWithColor:[TCTapOnView generateUIColor] OnPoint:point];
    
    [tappedPoints addObject:t];
    
    [self setNeedsDisplay];
}

@end
