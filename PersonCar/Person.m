//
//  Person.m
//  Manual Reference Counting Demo
//
//  Created by Paul Solt on 4/10/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import "Person.h"

@implementation Person

- (instancetype)init {
	if (self = [super init]) {
		
	}
	return self;
}

- (instancetype)initWithCar:(Car *)car {
	if (self = [super init]) {
		_car = [car retain];
	}
	return self;
}

- (void)dealloc {
    [_car release];
	[_name release];
    [super dealloc];
}

- (Car *)car {
    return _car;
}

// BUG!
@synthesize car = _car;
- (void)setCar:(Car *)car {
    [_car release];
    _car = [car retain];
}

@end
