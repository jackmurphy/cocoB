//
//  HelloWorldLayer.m
//  cocoB
//
//  Created by Administrator on 3/16/11.
//  Copyright __MyCompanyName__ 2011. All rights reserved.
//

// Import the interfaces
#import "PageScene.h"
#import "BgLayer.h"

// PageScene implementation
@implementation PageScene

+(id) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	PageScene *layer = [PageScene node];
	
	[scene addChild: layer];
	
	// return the scene
	return scene;
}

-(id) init
{
	if( (self=[super init] )) {
		[self addChild: [BgLayer node]];
		
		CGSize winSize = [[CCDirector sharedDirector] winSize];
		CCSprite *up = [CCSprite spriteWithFile:@"bauchi.gif" rect:CGRectMake(0, 0, 48, 48)];
		up.position = ccp(winSize.width/2, 100);
		[self addChild:up];
		
		CCSprite *down = [CCSprite spriteWithFile:@"baule.gif" rect:CGRectMake(0, 0, 48, 48)];
		down.position = ccp(winSize.width/2, 200);
		[self addChild:down];
		
		CCSprite *left = [CCSprite spriteWithFile:@"bgalla.gif" rect:CGRectMake(0, 0, 48, 48)];
		left.position = ccp(winSize.width/2 - 50, 150);
		[self addChild:left];
		
		CCSprite *right = [CCSprite spriteWithFile:@"eket.gif" rect:CGRectMake(0, 0, 48, 48)];
		right.position = ccp(winSize.width/2 + 50, 150);
		[self addChild:right];
	}
	return self;
}

// on "dealloc" you need to release all your retained objects
- (void) dealloc
{
	// in case you have something to dealloc, do it in this method
	// in this particular example nothing needs to be released.
	// cocos2d will automatically release all the children (Label)
	
	// don't forget to call "super dealloc"
	[super dealloc];
}
@end
