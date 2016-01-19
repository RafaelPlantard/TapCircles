//
//  TCTapCircleView.h
//  TapCircles
//
//  Created by Rafael Ferreira on 1/18/16.
//  Copyright © 2016 Data Empire. All rights reserved.
//

#import <UIKit/UIKit.h>

/*! @brief A view that show a red circle where the user tapped. */
@interface TCTapCircleView : UIView {
    /*! @brief Points that the user tapped on the view.*/
    NSMutableArray *tappedPoints;
}

@end
