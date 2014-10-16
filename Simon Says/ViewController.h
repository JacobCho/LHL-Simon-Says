//
//  ViewController.h
//  Simon Says
//
//  Created by Jacob Cho on 2014-10-15.
//  Copyright (c) 2014 Jacob Cho. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "blueButton.h"
#import "redButton.h"
#import "greenButton.h"
#import "orangeButton.h"

@interface ViewController : UIViewController
// Properties
@property (nonatomic, strong) NSMutableArray *buttonCombo;
@property (strong, nonatomic) IBOutlet blueButton *blueButton;
@property (strong, nonatomic) IBOutlet greenButton *greenButton;
@property (strong, nonatomic) IBOutlet orangeButton *orangeButton;
@property (strong, nonatomic) IBOutlet redButton *redButton;

// Methods
- (IBAction)blueButtonPressed:(blueButton *)sender;
- (IBAction)greenButtonPressed:(greenButton *)sender;
- (IBAction)orangeButtonPressed:(orangeButton *)sender;
- (IBAction)redButtonPressed:(redButton *)sender;
- (IBAction)startRoundButton:(UIButton *)sender;





@end

