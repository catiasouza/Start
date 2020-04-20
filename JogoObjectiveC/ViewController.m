//
//  ViewController.m
//  JogoObjectiveC
//
//  Created by Cátia Souza on 20/04/20.
//  Copyright © 2020 Cátia Souza. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    timeInt = 10;
    game = 1;
    scoreInt = 0;
    
    self.timeLabel.text = [NSString stringWithFormat:@"%i",timeInt];
    self.score.text = [NSString stringWithFormat:@"%i",scoreInt];
}


- (IBAction)startGame:(id)sender {
    if (timeInt == 10) {
        timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(startCounter) userInfo:nil repeats:YES];
        self.startButton.enabled = NO;
        self.startButton.alpha = 0.25;
    }
    if (game == 1) {
        scoreInt += 1;
        self.score.text = [NSString stringWithFormat:@"%i",scoreInt];
    }else{
        timeInt = 10;
        scoreInt = 0;
        self.timeLabel.text = [NSString stringWithFormat:@"%i",timeInt];
        self.score.text = [NSString stringWithFormat:@"%i",scoreInt];
         [self.startButton setTitle:@"Start" forState:UIControlStateNormal];
    }
}
-(void)startCounter{
    timeInt -= 1;
    self.timeLabel.text = [NSString stringWithFormat:@"%i",timeInt];
    game = 1;
    
    self.startButton.enabled = YES;
    self.startButton.alpha = 1.0;
    [self.startButton setTitle:@"Tap" forState:UIControlStateNormal];
    if (timeInt == 0) {
        
        [timer invalidate];
        self.startButton.enabled = NO;
        self.startButton.alpha = 0.25;
        [self.startButton setTitle:@"Start" forState:UIControlStateNormal];
        [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(restart) userInfo:nil repeats:NO];
        
        
    }
}
-(void)restart{
    self.startButton.enabled = YES;
    self.startButton.alpha = 2.0;
    game = 0;
}
@end
