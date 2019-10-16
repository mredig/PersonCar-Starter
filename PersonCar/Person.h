//
//  Person.h
//  Manual Reference Counting Demo
//
//  Created by Paul Solt on 4/10/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

@property (retain) Car *car;

@end

NS_ASSUME_NONNULL_END
