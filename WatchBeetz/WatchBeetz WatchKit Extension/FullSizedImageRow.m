//
//  FullSizedImageRow.m
//  WatchBeetz
//
//  Created by Scott Wasserman on 5/4/15.
//  Copyright (c) 2015 gwansu. All rights reserved.
//

#import "FullSizedImageRow.h"

@implementation FullSizedImageRow

- (NSInteger)randomValueBetween:(NSInteger)min and:(NSInteger)max {
    return (NSInteger)(min + arc4random_uniform(max - min + 1));
}

- (void)animate {
    [self showImage];
    NSInteger size = [self randomValueBetween:80 and:135];
    double duration = [self randomValueBetween:25 and:50];
    duration = duration/100;
    [self.image setWidth:size];
    [self.image setHeight:size];
    [self.image setImageNamed:@"tap_circle_"];
    [self.image startAnimatingWithImagesInRange:NSMakeRange(0, 20) duration:duration repeatCount:1];
}

- (void)showImage {
    [self.image setHidden:NO];
}
- (void)hideImage {
    [self.image setHidden:YES];
}

@end
