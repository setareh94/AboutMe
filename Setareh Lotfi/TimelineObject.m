//
//  TimelineObject.m
//  Setareh Lotfi
//
//  Created by Setareh Lotfi on 7/26/14.
//  Copyright (c) 2014 Setareh Lotfi. All rights reserved.
//

#import "TimelineObject.h"

@implementation TimelineObject

@synthesize date, text, image, app;

-(id)init {
    self = [super init];
    if (self) { }
    return self;
}

- (id)initWithDate:(NSString*)dateVar andText:(NSString*)textVar andImage:(UIImage*)imageVar andApp:(AppObject*)appVar {
    self = [super init];
    if (self) {
        date = dateVar;
        text = textVar;
        image = imageVar;
        app = appVar;
    }
    return self;
}

@end

