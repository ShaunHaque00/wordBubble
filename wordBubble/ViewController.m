//
//  ViewController.m
//  wordBubble
//
//  Created by Mohammad Haque on 8/3/15.
//  Copyright (c) 2015 Mohammad Haque. All rights reserved.
//

#import "ViewController.h"
#import <AudioToolbox/AudioToolbox.h>

@interface ViewController ()

@end
@implementation ViewController

-(IBAction) PlayAudioButton:(id)sender {
    AudioServicesPlaySystemSound(PlaySoundID);
}


- (void)viewDidLoad {
    
    NSURL *SoundURL = [NSURL fileURLWithPath: [[NSBundle mainBundle] pathForResource:@"bubblepop" ofType:@"mp3"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef) SoundURL, &PlaySoundID);
    
    moveObjectTimer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(moveObject) userInfo:nil repeats:YES];
    [super viewDidLoad];
    
    
}


-(void) moveObject {
    RightBubble.center = CGPointMake(RightBubble.center.x,RightBubble.center.y+5);
    LeftBubble.center = CGPointMake(LeftBubble.center.x,LeftBubble.center.y-5);
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
