//
//  Game.m
//  wordBubble
//
//  Created by Mohammad Haque on 8/5/15.
//  Copyright (c) 2015 Mohammad Haque. All rights reserved.
//

#import "Game.h"

@interface Game ()

@end

@implementation Game

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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
