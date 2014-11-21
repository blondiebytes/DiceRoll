//
//  DieView.h
//  Dice Roll
//
//  Created by Kathryn Hodge on 6/28/14.
//  Copyright (c) 2014 Kathryn Hodge Software. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DieView : UIView

#pragma mark - Properties

@property (strong, nonatomic) UIImageView *dieImageView;

#pragma mark - Methods

- (void)showDieNumber:(int)num;

@end
