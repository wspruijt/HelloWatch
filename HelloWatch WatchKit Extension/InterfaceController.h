//
//  InterfaceController.h
//  HelloWatch WatchKit Extension
//
//  Created by Willem Spruijt on 20/11/14.
//  Copyright (c) 2014 Fosbury. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface InterfaceController : WKInterfaceController
@property (strong, nonatomic) IBOutlet WKInterfaceTable *mainTable;

@end
