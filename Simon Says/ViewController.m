//
//  ViewController.m
//  Simon Says
//
//  Created by Jacob Cho on 2014-10-15.
//  Copyright (c) 2014 Jacob Cho. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

int counter = 0;
int userCounter = 0;
int userPress = 0;
BOOL started = NO;
NSNumber *returned = 0;
int randomButton = 0;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.buttonCombo = [[NSMutableArray alloc] init];
    

}

-(void)startRound {
    
    started = YES;
    
    while (started) {
        
        NSLog(@"Game has started!");

        counter = 2;
        
        while (counter > 0) {
            
            [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(randomBlink) userInfo:nil repeats:NO];
            
            counter--;

        }
        
        NSLog(@"%@", self.buttonCombo);
        started = NO;
    }
    
}



-(void)checkMatch {
    
    
    if ([NSNumber numberWithInt:userPress] == [self.buttonCombo objectAtIndex:userCounter]) {
        
        NSLog(@"Match!");
        [self allBlink];
        userCounter++;
       
    }
    
    else {
        NSLog(@"Wrong!");
        userCounter++;

    }
    
}


-(void)randomBlink {
    randomButton = (int)(arc4random() % 4) + 1;
    
    switch (randomButton) {
        case 1:
            [self.blueButton blueButtonBlink];
            [self.buttonCombo addObject:[NSNumber numberWithInt:randomButton]];

            break;
        case 2:
            [self.greenButton greenButtonBlink];
            [self.buttonCombo addObject:[NSNumber numberWithInt:randomButton]];

            break;
        case 3:
            [self.orangeButton orangeButtonBlink];
            [self.buttonCombo addObject:[NSNumber numberWithInt:randomButton]];
 
            break;
        case 4:
            [self.redButton redButtonBlink];
            [self.buttonCombo addObject:[NSNumber numberWithInt:randomButton]];

            break;
            
        default:
            break;
    }

}

-(void)allBlink {
    [self.blueButton blueButtonBlink];
    [self.greenButton greenButtonBlink];
    [self.orangeButton orangeButtonBlink];
    [self.redButton redButtonBlink];
}



- (IBAction)blueButtonPressed:(blueButton *)sender {
    
    [sender blueButtonBlink];
    userPress = [sender blueButtonPressed];
    (NSLog(@"%d", userPress));
    [self checkMatch];
}

- (IBAction)greenButtonPressed:(greenButton *)sender {
    [sender greenButtonBlink];
    userPress = [sender greenButtonPressed];
    (NSLog(@"%d", userPress));
    [self checkMatch];
}

- (IBAction)orangeButtonPressed:(orangeButton *)sender {
    [sender orangeButtonBlink];
    userPress = [sender orangeButtonPressed];
    (NSLog(@"%d", userPress));
    [self checkMatch];
}

- (IBAction)redButtonPressed:(redButton *)sender {
    [sender redButtonBlink];
    userPress = [sender redButtonPressed];
    (NSLog(@"%d", userPress));
    [self checkMatch];
}

- (IBAction)startRoundButton:(UIButton *)sender {
    [self startRound];
}


@end
