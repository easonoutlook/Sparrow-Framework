//
//  CustomHitTestScene.m
//  Demo
//
//  Created by Daniel Sperl on 22.08.09.
//  Copyright 2009 Incognitek. All rights reserved.
//

#import "CustomHitTestScene.h"
#import "RoundButton.h"

@interface CustomHitTestScene ()

- (void)setupScene;

@end



@implementation CustomHitTestScene

- (id)init
{
    if (self = [super init])
    {
        [self setupScene];        
    }
    return self;
}

- (void)setupScene
{
    NSString *description = [NSString stringWithFormat:@"%@%@",
                             @"Pushing Jupiter only works when the touch occurs within a circle.", 
                             @"This can be accomplished by overriding the method 'hitTestPoint:'."];
    
    SPTextField *infoText = [SPTextField textFieldWithWidth:300 height:100 
                                                       text:description fontName:@"Verdana" 
                                                  fontColor:0xffffff fontSize:13];    
    infoText.x = infoText.y = 10;
    infoText.vAlign = SPVAlignTop;
    infoText.hAlign = SPHAlignLeft;
    [self addChild:infoText];    
        
    // 'RoundButton' is a helper class of the Demo, not a part of Sparrow!
    // have a look at its code to understand this sample.
    
    SPTextureAtlas *atlas = [SPTextureAtlas atlasWithContentsOfFile:@"atlas.xml"];   
        
    RoundButton *button = [[RoundButton alloc] initWithUpState:[atlas textureByName:@"jupiter"]];
    button.x = 85;
    button.y = 150;
    
    [self addChild:button];
    
    [button release];    
}
    
@end
