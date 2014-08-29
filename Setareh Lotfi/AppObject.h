//
//  AppObject.h
//  Coulton Vento
//
//  Created by Coulton Vento on 4/14/14.
//  Copyright (c) 2014 coultonvento. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AppObject : NSObject {
    NSString *title, *text;
    NSString *buttonOneText, *buttonTwoText;
    NSURL *buttonOneURL, *buttonTwoURL;
}

@property (nonatomic, strong) NSString *title, *text, *buttonOneText, *buttonTwoText;
@property (nonatomic, strong) NSURL *buttonOneURL, *buttonTwoURL;

-(id)initWithTitle:(NSString*)titleVar andText:(NSString*)textVar andButtonOneTitle:(NSString*)buttonOneTextVar withLink:(NSURL*)buttonOneURLVar andButtonTwoTitle:(NSString*)buttonTwoTextVar withLink:(NSURL*)buttonTwoURLVar;

@end
