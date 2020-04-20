//
//  ViewController.h
//  JogoObjectiveC
//
//  Created by Cátia Souza on 20/04/20.
//  Copyright © 2020 Cátia Souza. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    NSTimer *timer;
    int timeInt;
    int scoreInt;
    int game;
}
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *score;
@property (weak, nonatomic) IBOutlet UIButton *startButton;

- (IBAction)startGame:(id)sender;


@end

