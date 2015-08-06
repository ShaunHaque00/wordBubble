//
//  ViewController.h
//  wordBubble
//
//  Created by Mohammad Haque on 8/3/15.
//  Copyright (c) 2015 Mohammad Haque. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>


@interface ViewController : UIViewController

{
    UIImageView *LeftBubble;
    UIImageView *RightBubble;
    NSTimer *moveObjectTimer;
    SystemSoundID PlaySoundID;

    
    
}

-(IBAction) PlayAudioButton:(id)sender;


@end

