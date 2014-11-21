//
//  DieView.m
//  Dice Roll
//
//  Created by Kathryn Hodge on 6/28/14.
//  Copyright (c) 2014 Kathryn Hodge Software. All rights reserved.
//

#import "DieView.h"

@implementation DieView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
        
    }
    return self;
}

-(id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if(self) {
        
        //setting the background color
        self.backgroundColor = [UIColor clearColor];
        
        //allocating the space for the image
        self.dieImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
        
        //adding image to view
        [self addSubview:self.dieImageView];
    }
    return self;
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (void)showDieNumber:(int)num
{
    //retrieving the image & assigning to the image of UIImageView
    if (num < 7) {
    NSString *fileName = [NSString stringWithFormat:@"dice%d.png", num];
        self.dieImageView.image = [UIImage imageNamed:fileName];
    } else {
        self.dieImageView.image = nil;
    }
    
}

@end
