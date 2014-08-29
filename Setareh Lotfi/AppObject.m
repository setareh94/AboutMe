//
//  AppObject.m
//  Coulton Vento
//
//  Created by Coulton Vento on 4/14/14.
//  Copyright (c) 2014 coultonvento. All rights reserved.
//

#import "AppObject.h"

@implementation AppObject

@synthesize  title, text, buttonOneText, buttonOneURL;

-(id)init {
    self = [super init];
    if (self) { }
    return self;
}

-(id)initWithTitle:(NSString*)titleVar andText:(NSString*)textVar andButtonOneTitle:(NSString*)buttonOneTextVar withLink:(NSURL*)buttonOneURLVar {
    self = [super init];
    if (self) {
        title = titleVar;
        text = textVar;
        buttonOneText = buttonOneTextVar;
        buttonOneURL = buttonOneURLVar;
       
    }
    return self;
}

@end
