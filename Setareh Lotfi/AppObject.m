//
//  AppObject.m
//  Coulton Vento
//
//  Created by Coulton Vento on 4/14/14.
//  Copyright (c) 2014 coultonvento. All rights reserved.
//

#import "AppObject.h"

@implementation AppObject

@synthesize  title, text, buttonOneText, buttonTwoText, buttonOneURL, buttonTwoURL;

-(id)init {
    self = [super init];
    if (self) { }
    return self;
}

-(id)initWithTitle:(NSString*)titleVar andText:(NSString*)textVar andButtonOneTitle:(NSString*)buttonOneTextVar withLink:(NSURL*)buttonOneURLVar andButtonTwoTitle:(NSString*)buttonTwoTextVar withLink:(NSURL*)buttonTwoURLVar {
    self = [super init];
    if (self) {
        title = titleVar;
        text = textVar;
        buttonOneText = buttonOneTextVar;
        buttonOneURL = buttonOneURLVar;
        buttonTwoText = buttonTwoTextVar;
        buttonTwoURL = buttonTwoURLVar;
    }
    return self;
}

@end
