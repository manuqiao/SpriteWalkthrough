//
//  SpaceshipScene.m
//  SpriteWalkthrough
//
//  Created by ManuQiao on 13-6-20.
//  Copyright (c) 2013年 ManuQiao. All rights reserved.
//

#import "SpaceshipScene.h"

@interface SpaceshipScene ()

@property BOOL contentCreated;

@end

@implementation SpaceshipScene

- (void)didMoveToView:(SKView *)view
{
    if (!self.contentCreated) {
        [self createSceneContents];
        self.contentCreated = YES;
    }
}

- (void)createSceneContents
{
    self.backgroundColor = [SKColor blackColor];
    self.scaleMode = SKSceneScaleModeAspectFit;
    
    SKSpriteNode *spaceship = [self newSpaceship];
    spaceship.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame) - 150);
    [self addChild:spaceship];
}

- (SKSpriteNode *)newSpaceship
{
    SKSpriteNode *hull = [[SKSpriteNode alloc] initWithColor:[SKColor grayColor] size:CGSizeMake(64, 32)];
    SKAction *hover = [SKAction sequence:@[[SKAction waitForDuration:1.0],
                                           [SKAction moveByX:100 y:50.0 duration:1.0],
                                           [SKAction waitForDuration:1.0],
                                           [SKAction moveByX:-100 y:-50 duration:1.0]]];
    [hull runAction:[SKAction repeatActionForever:hover]];
    return hull;
}
@end
