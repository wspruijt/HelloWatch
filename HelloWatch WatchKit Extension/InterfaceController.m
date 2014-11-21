//
//  InterfaceController.m
//  HelloWatch WatchKit Extension
//
//  Created by Willem Spruijt on 20/11/14.
//  Copyright (c) 2014 Fosbury. All rights reserved.
//

#import "InterfaceController.h"
#import "MainTableRow.h"

@interface InterfaceController()

@end


@implementation InterfaceController

- (instancetype)initWithContext:(id)context {
    self = [super initWithContext:context];
    if (self){
        // Initialize variables here.
        // Configure interface objects here.
        NSLog(@"%@ initWithContext", self);
        
        [self fillTable];
    }
    
    return self;
}

-(void)fillTable {
    [self.mainTable setNumberOfRows:10 withRowType:@"MainTableRow"];
    
    for (int i=0; i<10; i++) {
        NSString *str = @"Row ";
        
        MainTableRow *theRow = [self.mainTable rowControllerAtIndex:i];
        [theRow.rowDescription setText:[str stringByAppendingString:[NSString stringWithFormat:@"%d", i]]];
    }
}

- (void)table:(WKInterfaceTable *)table didSelectRowAtIndex:(NSInteger)rowIndex {
    NSLog(@"Selected row %ld", (long)rowIndex);
    [self.mainTable rowControllerAtIndex:rowIndex];
    
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    NSLog(@"%@ will activate", self);
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    NSLog(@"%@ did deactivate", self);
}

@end



