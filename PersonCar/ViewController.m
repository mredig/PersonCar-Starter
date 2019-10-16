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

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    Car *car = [[Car alloc] init];
    
    Person *person = [[Person alloc] init];
    person.car = car;       // person owns car
    [car release];
    
    // CRASH
    person.car = car;
    
}


@end
