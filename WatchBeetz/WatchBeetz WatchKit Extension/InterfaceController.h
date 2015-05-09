//
//  InterfaceController.h
//  WatchBeetz WatchKit Extension
//
//  Created by Scott Wasserman on 5/1/15.
//  Copyright (c) 2015 gwansu. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>
#import "FullSizedImageRow.h"

@interface InterfaceController : WKInterfaceController {
    int _hitCount;
    NSTimer *_hitTimer;
    int _currentBPM;
    BOOL _inSession;
    FullSizedImageRow *_row;
}

@property (weak, nonatomic) IBOutlet WKInterfaceLabel *hitLabel;
@property (weak, nonatomic) IBOutlet WKInterfaceTable *fullScreenTable;

- (IBAction)resetTouched;


@end
