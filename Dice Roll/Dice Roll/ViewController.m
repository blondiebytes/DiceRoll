//
//  ViewController.m
//  Dice Roll
//
//  Created by Kathryn Hodge on 6/28/14.
//  Copyright (c) 2014 Kathryn Hodge Software. All rights reserved.
//

#import "ViewController.h"
#import "DiceDataController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)rollClicked:(id)sender {
    DiceDataController *diceController = [[DiceDataController alloc] init];
    if ([self.gameModeControl selectedSegmentIndex] == 1) {
        int firstNumber = [diceController getDieNumber];
        [self.firstDieView showDieNumber:firstNumber];
        int secondNumber = [diceController getDieNumber];
        [self.secondDieView showDieNumber:secondNumber];
        self.sumLabel.text = [NSString stringWithFormat:@"The sum is %d.", firstNumber + secondNumber];}
    else {
        int altFirstNumber = [diceController getDieNumber];
        [self.altFirstDieView showDieNumber:altFirstNumber];
        self.sumLabel.text = [NSString stringWithFormat:@"The roll is %d.", altFirstNumber];
    }
    [self.gameModeControl setEnabled:NO];
}



static const int RESET_DICE = 10;


- (IBAction)touchResetButton:(id)sender {
    [self.gameModeControl setEnabled: YES];
    self.sumLabel.text = [NSString stringWithFormat:@"Click to Roll"];
    [self.secondDieView showDieNumber:RESET_DICE];
    [self.firstDieView showDieNumber:RESET_DICE];
    [self.altFirstDieView showDieNumber:RESET_DICE];
}



@end
