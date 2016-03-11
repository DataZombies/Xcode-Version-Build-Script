//
//  InterfaceController.m
//  Xcode Version-Build Script Watch Extension
//
//  Created by Daniel Pinter on 2016-03-10.
//  Copyright © 2016 DataZombies. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()

@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceLabel *versionLabel;
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceLabel *buildLabel;

@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.
    _versionLabel.text = [NSString stringWithFormat:@"Version: %@", [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleShortVersionString"]];
    _buildLabel.text = [NSString stringWithFormat:@"Build: %@", [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleVersion"]];
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



