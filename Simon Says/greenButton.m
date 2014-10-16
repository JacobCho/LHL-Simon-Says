//
//  greenButton.m
//  Simon Says
//
//  Created by Jacob Cho on 2014-10-15.
//  Copyright (c) 2014 Jacob Cho. All rights reserved.
//

#import "greenButton.h"

@implementation greenButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(void)greenButtonBlink {
    [UIView animateWithDuration:0.5 animations:^{
        self.alpha = 1.0;
    }];
    
    [UIView animateWithDuration:0.5 animations:^{
        self.alpha = 0.5;
    }];
    
}
-(int)greenButtonPressed {
    return 2;
}

@end
