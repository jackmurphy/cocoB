//
//  BgLayer.m
//  cocoB
//
//  Created by Administrator on 3/16/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "BgLayer.h"


@implementation BgLayer

-(id) init
{
	if( (self=[super init] )) {
		CGSize winSize = [[CCDirector sharedDirector] winSize];
		CCSprite *bg = [CCSprite spriteWithFile:@"bg1.png" rect:CGRectMake(0, 0, 720, 680)];
		bg.position = ccp(winSize.width/2, 600);
		[self addChild:bg];
		
		CCSprite *cloud1 = [CCSprite spriteWithFile:@"cloud1.png" rect:CGRectMake(0, 0, 720, 680)];
		cloud1.position = ccp(winSize.width/2, 600);
		[self addChild:cloud1];	
		
		CCSprite *mtn3 = [CCSprite spriteWithFile:@"mountain3.png" rect:CGRectMake(0, 0, 720, 680)];
		mtn3.position = ccp(winSize.width/2, 600);
		[self addChild:mtn3];
		
		CCSprite *mtn2 = [CCSprite spriteWithFile:@"mountain2.png" rect:CGRectMake(0, 0, 720, 680)];
		mtn2.position = ccp(winSize.width/2, 600);
		[self addChild:mtn2];	
		
		CCSprite *mtn1 = [CCSprite spriteWithFile:@"mountain1.png" rect:CGRectMake(0, 0, 720, 680)];
		mtn1.position = ccp(winSize.width/2, 600);
		[self addChild:mtn1];	
		
		CCSprite *actor = [CCSprite spriteWithFile:@"actor1.png" rect:CGRectMake(0, 0, 720, 680)];
		actor.position = ccp(winSize.width/2, 600);
		[self addChild:actor];	
		
		CCSprite *cloud2 = [CCSprite spriteWithFile:@"cloud2.png" rect:CGRectMake(0, 0, 720, 680)];
		cloud2.position = ccp(winSize.width/2, 600);
		[self addChild:cloud2];		
	}
	
	return self;
}

-(void)setPosition:(CGPoint)position {
    [super setPosition:ccp(position.x * 0.5, position.y * 0.5)];
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
