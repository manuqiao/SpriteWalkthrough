//
//  SpriteViewController.m
//  SpriteWalkthrough
//
//  Created by ManuQiao on 13-6-20.
//  Copyright (c) 2013年 ManuQiao. All rights reserved.
//

#import "SpriteViewController.h"
#import "SpriteMyScene.h"
#import "HelloScene.h"


@implementation SpriteViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Configure the view.
    SKView * skView = (SKView *)self.view;
    skView.showsFPS = YES;
    skView.showsNodeCount = YES;
    skView.showsDrawCount = YES;
}

- (void)viewWillAppear:(BOOL)animated
{
    HelloScene *hello = [[HelloScene alloc] initWithSize:(CGSizeMake(768, 1024))];
    SKView *spriteView = (SKView *)self.view;
    [spriteView presentScene:hello];
}

- (BOOL)shouldAutorotate
{
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return UIInterfaceOrientationMaskAllButUpsideDown;
    } else {
        return UIInterfaceOrientationMaskAll;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

@end
