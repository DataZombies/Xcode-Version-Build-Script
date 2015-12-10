//
//  ViewController.m
//  Xcode Version-Build Script
//
//  Created by Daniel Pinter on 2015-12-10.
//  Copyright © 2015 DataZombies. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *lblVersion;
@property (weak, nonatomic) IBOutlet UILabel *lblBuild;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    self.lblVersion.text = [NSString stringWithFormat:@"Version: %@", [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleShortVersionString"]];
    self.lblBuild.text = [NSString stringWithFormat:@"Build: %@", [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleVersion"]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
