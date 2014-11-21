//
//  DiceDataController.m
//  Dice Roll
//
//  Created by Kathryn Hodge on 6/28/14.
//  Copyright (c) 2014 Kathryn Hodge Software. All rights reserved.
//

#import "DiceDataController.h"

@implementation DiceDataController

-(int)getDieNumber
{
    int r = (arc4random() % 6) + 1;
    return r;
}

@end
