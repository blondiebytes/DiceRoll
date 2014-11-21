//
//  ViewController.h
//  Dice Roll
//
//  Created by Kathryn Hodge on 6/28/14.
//  Copyright (c) 2014 Kathryn Hodge Software. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DieView.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *rollButton;
@property (weak, nonatomic) IBOutlet UILabel *sumLabel;
@property (weak, nonatomic) IBOutlet DieView *firstDieView;
@property (weak, nonatomic) IBOutlet DieView *secondDieView;
@property (weak, nonatomic) IBOutlet DieView *altFirstDieView;
@property (weak, nonatomic) IBOutlet UISegmentedControl *gameModeControl;

@end
