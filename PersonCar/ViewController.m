//
//  ViewController.m
//  PersonCar
//
//  Created by Paul Solt on 4/10/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import "ViewController.h"
#import "Car.h"
#import "Person.h"

@interface ViewController ()

@property (retain) Person *myFriend;

@end

@implementation ViewController

- (void)dealloc
{
	[_myFriend release];
	_myFriend = nil;

	[super dealloc];
}

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view.

	Car *car = [[Car alloc] init];

	Person *person = [[Person alloc] init];
	person.car = car;       // person owns car
	[car release];			// transferring ownership to person



	[person release]; // both person and car are cleaned up (memory is returned to system)
	// CRASH
//	person.car = car;

}


@end
