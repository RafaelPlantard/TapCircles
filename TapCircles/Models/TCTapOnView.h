//
//  TCTapOnView.h
//  TapCircles
//
//  Created by Rafael Ferreira on 1/18/16.
//  Copyright © 2016 Data Empire. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

/*! @brief Represents a view that the user tapped. */
@interface TCTapOnView : NSObject

/*! @brief The color for this point. */
@property (nonatomic, strong) UIColor *color;

/*! @brief The point itself. */
@property (nonatomic, assign) CGPoint point;

/*! @brief A custom initializer for color and point. */
- initWithColor:(UIColor *)color OnPoint:(CGPoint) point;

/*! @brief Easily generate a UIColor for color property. */
+ (UIColor *)generateUIColor;

@end