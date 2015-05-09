//
//  InterfaceController.m
//  WatchBeetz WatchKit Extension
//
//  Created by Scott Wasserman on 5/1/15.
//  Copyright (c) 2015 gwansu. All rights reserved.
//

#import "InterfaceController.h"
#import "FullSizedImageRow.h"

@interface InterfaceController()

@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    [self resetSession];

    NSMutableArray *rowTypesList = [NSMutableArray array];
    [rowTypesList addObject:@"FullSizeRow"];
    [self.fullScreenTable setRowTypes:rowTypesList];

    [self updateHitCount];
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)table:(WKInterfaceTable *)table didSelectRowAtIndex:(NSInteger)rowIndex {
    NSObject *rowObject = [self.fullScreenTable rowControllerAtIndex:0];
    FullSizedImageRow *row = (FullSizedImageRow *)rowObject;
    [row animate];
    _hitCount++;
    [self updateHitCount];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

- (void)resetSession {
    _inSession = NO;
    _hitCount = 0;
}

- (void)startSession {
    _inSession = YES;
}

- (void)stopSession {
    _inSession = NO;
}

- (void)updateHitCount {
    self.hitLabel.text = [NSString stringWithFormat:@"%i",_hitCount];
}

- (IBAction)resetTouched {
    [self resetSession];
    [self updateHitCount];
}
@end



