//
//  FullSizedImageRow.h
//  WatchBeetz
//
//  Created by Scott Wasserman on 5/4/15.
//  Copyright (c) 2015 gwansu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <WatchKit/WatchKit.h>

@interface FullSizedImageRow : NSObject {
    BOOL _animating;
}
@property (weak, nonatomic) IBOutlet WKInterfaceImage *image;

- (void)animate;
- (void)showImage;
- (void)hideImage;
@end
