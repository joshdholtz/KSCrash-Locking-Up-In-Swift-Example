//
//  ViewController.m
//  KSCrashTestObjC
//
//  Created by Josh Holtz on 1/13/16.
//  Copyright © 2016 Josh Holtz. All rights reserved.
//

#import "ViewController.h"

@import KSCrash;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];

	KSCrash *crash = [KSCrash sharedInstance];
	[crash install];
}

- (IBAction)onClickBreakSomething:(id)sender {
	// The app crash properly here
	// Nothing unusual to see
	//
	// KSCrash will do its thing and capture this report
	// before the app force closes
	NSMutableArray *array = @[].mutableCopy;
	[array addObject:nil];
}


@end
